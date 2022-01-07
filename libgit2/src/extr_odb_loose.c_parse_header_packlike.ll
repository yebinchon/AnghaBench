; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_parse_header_packlike.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_parse_header_packlike.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to parse loose object: invalid header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*, i8*, i64)* @parse_header_packlike to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_header_packlike(%struct.TYPE_3__* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %69

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %13, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %13, align 8
  %21 = getelementptr inbounds i8, i8* %18, i64 %19
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i64
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = lshr i64 %24, 4
  %26 = and i64 %25, 7
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %10, align 8
  %30 = and i64 %29, 15
  store i64 %30, i64* %12, align 8
  store i64 4, i64* %11, align 8
  br label %31

31:                                               ; preds = %44, %17
  %32 = load i64, i64* %10, align 8
  %33 = and i64 %32, 128
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %69

40:                                               ; preds = %35
  %41 = load i64, i64* %11, align 8
  %42 = icmp ule i64 64, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %69

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %13, align 8
  %48 = getelementptr inbounds i8, i8* %45, i64 %46
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i64
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = and i64 %51, 127
  %53 = load i64, i64* %11, align 8
  %54 = shl i64 %52, %53
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 7
  store i64 %58, i64* %11, align 8
  br label %31

59:                                               ; preds = %31
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i64*, i64** %7, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i64, i64* %13, align 8
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %59
  store i32 0, i32* %5, align 4
  br label %72

69:                                               ; preds = %43, %39, %16
  %70 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %71 = call i32 @git_error_set(i32 %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
