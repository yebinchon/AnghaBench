; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_get_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.commit_list*, %struct.TYPE_4__ }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GET_OID_COMMITTISH = common dso_local global i32 0, align 4
@MISSING_OBJECT = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, %struct.object_id*, i32)* @get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_parent(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_id, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.commit*, align 8
  %15 = alloca %struct.commit_list*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.repository*, %struct.repository** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @GET_OID_COMMITTISH, align 4
  %20 = call i32 @get_oid_1(%struct.repository* %16, i8* %17, i32 %18, %struct.object_id* %12, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %69

25:                                               ; preds = %5
  %26 = load %struct.repository*, %struct.repository** %7, align 8
  %27 = call %struct.commit* @lookup_commit_reference(%struct.repository* %26, %struct.object_id* %12)
  store %struct.commit* %27, %struct.commit** %14, align 8
  %28 = load %struct.commit*, %struct.commit** %14, align 8
  %29 = call i64 @parse_commit(%struct.commit* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @MISSING_OBJECT, align 4
  store i32 %32, i32* %6, align 4
  br label %69

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load %struct.object_id*, %struct.object_id** %10, align 8
  %38 = load %struct.commit*, %struct.commit** %14, align 8
  %39 = getelementptr inbounds %struct.commit, %struct.commit* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @oidcpy(%struct.object_id* %37, i32* %40)
  %42 = load i32, i32* @FOUND, align 4
  store i32 %42, i32* %6, align 4
  br label %69

43:                                               ; preds = %33
  %44 = load %struct.commit*, %struct.commit** %14, align 8
  %45 = getelementptr inbounds %struct.commit, %struct.commit* %44, i32 0, i32 0
  %46 = load %struct.commit_list*, %struct.commit_list** %45, align 8
  store %struct.commit_list* %46, %struct.commit_list** %15, align 8
  br label %47

47:                                               ; preds = %63, %43
  %48 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %49 = icmp ne %struct.commit_list* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = load %struct.object_id*, %struct.object_id** %10, align 8
  %56 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %57 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @oidcpy(%struct.object_id* %55, i32* %60)
  %62 = load i32, i32* @FOUND, align 4
  store i32 %62, i32* %6, align 4
  br label %69

63:                                               ; preds = %50
  %64 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %65 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %64, i32 0, i32 0
  %66 = load %struct.commit_list*, %struct.commit_list** %65, align 8
  store %struct.commit_list* %66, %struct.commit_list** %15, align 8
  br label %47

67:                                               ; preds = %47
  %68 = load i32, i32* @MISSING_OBJECT, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %54, %36, %31, %23
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @get_oid_1(%struct.repository*, i8*, i32, %struct.object_id*, i32) #1

declare dso_local %struct.commit* @lookup_commit_reference(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
