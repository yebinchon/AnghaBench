; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_get_describe_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_get_describe_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@GET_OID_QUIETLY = common dso_local global i32 0, align 4
@GET_OID_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, %struct.object_id*)* @get_describe_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_describe_name(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  %13 = load i32, i32* @GET_OID_QUIETLY, align 4
  %14 = load i32, i32* @GET_OID_COMMIT, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %62, %4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ule i8* %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %12, align 1
  %29 = load i8, i8* %12, align 1
  %30 = call i32 @isxdigit(i8 signext %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %26
  %33 = load i8, i8* %12, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 103
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load %struct.repository*, %struct.repository** %6, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.object_id*, %struct.object_id** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @get_short_oid(%struct.repository* %54, i8* %55, i32 %56, %struct.object_id* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %66

60:                                               ; preds = %36, %32
  br label %61

61:                                               ; preds = %60, %26
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %10, align 8
  br label %21

65:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @get_short_oid(%struct.repository*, i8*, i32, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
