; ModuleID = '/home/carl/AnghaBench/git/extr_xdiff-interface.c_xdiff_set_find_func.c'
source_filename = "/home/carl/AnghaBench/git/extr_xdiff-interface.c_xdiff_set_find_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ff_regs*, i32 }
%struct.ff_regs = type { i32, %struct.ff_reg* }
%struct.ff_reg = type { i32, i32 }

@ff_regexp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Last expression must not be negated: %s\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid regexp to look for hunk header: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdiff_set_find_func(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ff_regs*, align 8
  %9 = alloca %struct.ff_reg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @ff_regexp, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = call %struct.ff_regs* @xmalloc(i32 16)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.ff_regs* %16, %struct.ff_regs** %18, align 8
  store %struct.ff_regs* %16, %struct.ff_regs** %8, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.ff_regs*, %struct.ff_regs** %8, align 8
  %20 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %42, %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %21
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.ff_regs*, %struct.ff_regs** %8, align 8
  %38 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %36, %28
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load %struct.ff_regs*, %struct.ff_regs** %8, align 8
  %47 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %46, i32 0, i32 1
  %48 = load %struct.ff_reg*, %struct.ff_reg** %47, align 8
  %49 = load %struct.ff_regs*, %struct.ff_regs** %8, align 8
  %50 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ALLOC_ARRAY(%struct.ff_reg* %48, i32 %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %126, %45
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.ff_regs*, %struct.ff_regs** %8, align 8
  %56 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %129

59:                                               ; preds = %53
  %60 = load %struct.ff_regs*, %struct.ff_regs** %8, align 8
  %61 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %60, i32 0, i32 1
  %62 = load %struct.ff_reg*, %struct.ff_reg** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ff_reg, %struct.ff_reg* %62, i64 %64
  store %struct.ff_reg* %65, %struct.ff_reg** %9, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 10)
  store i8* %67, i8** %10, align 8
  store i8* null, i8** %12, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 33
  %72 = zext i1 %71 to i32
  %73 = load %struct.ff_reg*, %struct.ff_reg** %9, align 8
  %74 = getelementptr inbounds %struct.ff_reg, %struct.ff_reg* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ff_reg*, %struct.ff_reg** %9, align 8
  %76 = getelementptr inbounds %struct.ff_reg, %struct.ff_reg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %59
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ff_regs*, %struct.ff_regs** %8, align 8
  %82 = getelementptr inbounds %struct.ff_regs, %struct.ff_regs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %79, %59
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 33
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i8*, i8** %10, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = call i8* @xstrndup(i8* %101, i32 %107)
  store i8* %108, i8** %12, align 8
  store i8* %108, i8** %11, align 8
  br label %111

109:                                              ; preds = %97
  %110 = load i8*, i8** %5, align 8
  store i8* %110, i8** %11, align 8
  br label %111

111:                                              ; preds = %109, %100
  %112 = load %struct.ff_reg*, %struct.ff_reg** %9, align 8
  %113 = getelementptr inbounds %struct.ff_reg, %struct.ff_reg* %112, i32 0, i32 1
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i64 @regcomp(i32* %113, i8* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118, %111
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8* %125, i8** %5, align 8
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %53

129:                                              ; preds = %53
  ret void
}

declare dso_local %struct.ff_regs* @xmalloc(i32) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.ff_reg*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
