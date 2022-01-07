; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_get_nth_ancestor.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_get_nth_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.commit* }

@GET_OID_COMMITTISH = common dso_local global i32 0, align 4
@MISSING_OBJECT = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, %struct.object_id*, i32)* @get_nth_ancestor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nth_ancestor(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.object_id, align 4
  %13 = alloca %struct.commit*, align 8
  %14 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.repository*, %struct.repository** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GET_OID_COMMITTISH, align 4
  %19 = call i32 @get_oid_1(%struct.repository* %15, i8* %16, i32 %17, %struct.object_id* %12, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %60

24:                                               ; preds = %5
  %25 = load %struct.repository*, %struct.repository** %7, align 8
  %26 = call %struct.commit* @lookup_commit_reference(%struct.repository* %25, %struct.object_id* %12)
  store %struct.commit* %26, %struct.commit** %13, align 8
  %27 = load %struct.commit*, %struct.commit** %13, align 8
  %28 = icmp ne %struct.commit* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @MISSING_OBJECT, align 4
  store i32 %30, i32* %6, align 4
  br label %60

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %11, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.commit*, %struct.commit** %13, align 8
  %38 = call i64 @parse_commit(%struct.commit* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.commit*, %struct.commit** %13, align 8
  %42 = getelementptr inbounds %struct.commit, %struct.commit* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* @MISSING_OBJECT, align 4
  store i32 %46, i32* %6, align 4
  br label %60

47:                                               ; preds = %40
  %48 = load %struct.commit*, %struct.commit** %13, align 8
  %49 = getelementptr inbounds %struct.commit, %struct.commit* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.commit*, %struct.commit** %51, align 8
  store %struct.commit* %52, %struct.commit** %13, align 8
  br label %32

53:                                               ; preds = %32
  %54 = load %struct.object_id*, %struct.object_id** %10, align 8
  %55 = load %struct.commit*, %struct.commit** %13, align 8
  %56 = getelementptr inbounds %struct.commit, %struct.commit* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @oidcpy(%struct.object_id* %54, i32* %57)
  %59 = load i32, i32* @FOUND, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %53, %45, %29, %22
  %61 = load i32, i32* %6, align 4
  ret i32 %61
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
