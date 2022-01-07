; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_hints_merge_generate_new_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_hints_merge_generate_new_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hints_gather_extra = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"gather_hints%s%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_latin\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"*%d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hints_merge_generate_new_key(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hints_gather_extra*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.hints_gather_extra*
  store %struct.hints_gather_extra* %17, %struct.hints_gather_extra** %10, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.hints_gather_extra*, %struct.hints_gather_extra** %10, align 8
  %20 = getelementptr inbounds %struct.hints_gather_extra, %struct.hints_gather_extra* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = load %struct.hints_gather_extra*, %struct.hints_gather_extra** %10, align 8
  %26 = getelementptr inbounds %struct.hints_gather_extra, %struct.hints_gather_extra* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %5, align 8
  %32 = load %struct.hints_gather_extra*, %struct.hints_gather_extra** %10, align 8
  %33 = getelementptr inbounds %struct.hints_gather_extra, %struct.hints_gather_extra* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.hints_gather_extra*, %struct.hints_gather_extra** %10, align 8
  %39 = getelementptr inbounds %struct.hints_gather_extra, %struct.hints_gather_extra* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %36, %4
  %46 = load %struct.hints_gather_extra*, %struct.hints_gather_extra** %10, align 8
  %47 = getelementptr inbounds %struct.hints_gather_extra, %struct.hints_gather_extra* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.hints_gather_extra*, %struct.hints_gather_extra** %10, align 8
  %53 = getelementptr inbounds %struct.hints_gather_extra, %struct.hints_gather_extra* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %5, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %5, align 8
  br label %59

59:                                               ; preds = %50, %45
  %60 = load i8*, i8** %5, align 8
  %61 = load %struct.hints_gather_extra*, %struct.hints_gather_extra** %10, align 8
  %62 = getelementptr inbounds %struct.hints_gather_extra, %struct.hints_gather_extra* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %5, align 8
  br label %68

68:                                               ; preds = %73, %59
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 40
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  br label %68

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %82, %76
  %78 = load i8*, i8** %6, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 41
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  %85 = load i8, i8* %83, align 1
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  store i8 %85, i8* %86, align 1
  br label %77

88:                                               ; preds = %77
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  store i8 41, i8* %89, align 1
  %91 = load i8*, i8** %5, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %5, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  ret i32 %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
