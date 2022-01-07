; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_emit_line_ws_markup.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_emit_line_ws_markup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32*, i32, i32 }

@DIFF_WHITESPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, i8*, i8*, i8*, i32, i8*, i32, i32, i32)* @emit_line_ws_markup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_line_ws_markup(%struct.diff_options* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.diff_options*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %21 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %22 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %20, align 4
  %28 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %29 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %17, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %9
  %35 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %36 = load i32, i32* @DIFF_WHITESPACE, align 4
  %37 = call i8* @diff_get_color_opt(%struct.diff_options* %35, i32 %36)
  store i8* %37, i8** %19, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i8* null, i8** %19, align 8
  br label %42

42:                                               ; preds = %41, %34
  br label %43

43:                                               ; preds = %42, %9
  %44 = load i8*, i8** %19, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i32, i32* %20, align 4
  %54 = load i8*, i8** %15, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @emit_line_0(%struct.diff_options* %50, i8* %51, i8* null, i32 0, i8* %52, i32 %53, i8* %54, i32 %55)
  br label %115

57:                                               ; preds = %46, %43
  %58 = load i8*, i8** %19, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  %61 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %20, align 4
  %71 = load i8*, i8** %15, align 8
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @emit_line_0(%struct.diff_options* %61, i8* %62, i8* %63, i32 %68, i8* %69, i32 %70, i8* %71, i32 %72)
  br label %114

74:                                               ; preds = %57
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %79 = load i8*, i8** %19, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %20, align 4
  %82 = load i8*, i8** %15, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @emit_line_0(%struct.diff_options* %78, i8* %79, i8* null, i32 0, i8* %80, i32 %81, i8* %82, i32 %83)
  br label %113

85:                                               ; preds = %74
  %86 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i8*, i8** %11, align 8
  br label %93

91:                                               ; preds = %85
  %92 = load i8*, i8** %12, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i8* [ %90, %89 ], [ %92, %91 ]
  %95 = load i8*, i8** %11, align 8
  %96 = icmp ne i8* %95, null
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* %20, align 4
  %102 = call i32 @emit_line_0(%struct.diff_options* %86, i8* %94, i8* null, i32 %99, i8* %100, i32 %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %103 = load i8*, i8** %15, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %107 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %12, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i8*, i8** %19, align 8
  %112 = call i32 @ws_check_emit(i8* %103, i32 %104, i32 %105, i32 %108, i8* %109, i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %93, %77
  br label %114

114:                                              ; preds = %113, %60
  br label %115

115:                                              ; preds = %114, %49
  ret void
}

declare dso_local i8* @diff_get_color_opt(%struct.diff_options*, i32) #1

declare dso_local i32 @emit_line_0(%struct.diff_options*, i8*, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @ws_check_emit(i8*, i32, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
