; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_loop_break.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_loop_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.loopinfo* }
%struct.loopinfo = type { i64, i64, i32, i32, %struct.loopinfo* }

@NOVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unexpected break\00", align 1
@LOOP_BEGIN = common dso_local global i64 0, align 8
@LOOP_RESCUE = common dso_local global i64 0, align 8
@OP_POPERR = common dso_local global i32 0, align 4
@LOOP_NORMAL = common dso_local global i64 0, align 8
@OP_EPOP = common dso_local global i32 0, align 4
@OP_JMP = common dso_local global i32 0, align 4
@OP_LOADNIL = common dso_local global i32 0, align 4
@OP_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @loop_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_break(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.loopinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.loopinfo*, %struct.loopinfo** %9, align 8
  %11 = icmp ne %struct.loopinfo* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @NOVAL, align 4
  %16 = call i32 @codegen(%struct.TYPE_10__* %13, i32* %14, i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = call i32 @raise_error(%struct.TYPE_10__* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %136

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @gen_retval(%struct.TYPE_10__* %23, i32* %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.loopinfo*, %struct.loopinfo** %28, align 8
  store %struct.loopinfo* %29, %struct.loopinfo** %5, align 8
  br label %30

30:                                               ; preds = %57, %26
  %31 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %32 = icmp ne %struct.loopinfo* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %35 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LOOP_BEGIN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %43 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %42, i32 0, i32 4
  %44 = load %struct.loopinfo*, %struct.loopinfo** %43, align 8
  store %struct.loopinfo* %44, %struct.loopinfo** %5, align 8
  br label %57

45:                                               ; preds = %33
  %46 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %47 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LOOP_RESCUE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %53 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %52, i32 0, i32 4
  %54 = load %struct.loopinfo*, %struct.loopinfo** %53, align 8
  store %struct.loopinfo* %54, %struct.loopinfo** %5, align 8
  br label %56

55:                                               ; preds = %45
  br label %58

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %39
  br label %30

58:                                               ; preds = %55, %30
  %59 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %60 = icmp ne %struct.loopinfo* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = call i32 @raise_error(%struct.TYPE_10__* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %136

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = load i32, i32* @OP_POPERR, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @genop_1(%struct.TYPE_10__* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %64
  %73 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %74 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LOOP_NORMAL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %122

78:                                               ; preds = %72
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load %struct.loopinfo*, %struct.loopinfo** %83, align 8
  %85 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %81, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %78
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = load i32, i32* @OP_EPOP, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load %struct.loopinfo*, %struct.loopinfo** %95, align 8
  %97 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %93, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @genop_1(%struct.TYPE_10__* %89, i32 %90, i32 %100)
  br label %102

102:                                              ; preds = %88, %78
  %103 = load i32*, i32** %4, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %108 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (...) @cursp()
  %111 = call i32 @gen_move(%struct.TYPE_10__* %106, i32 %109, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %105, %102
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = load i32, i32* @OP_JMP, align 4
  %115 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %116 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @genjmp(%struct.TYPE_10__* %113, i32 %114, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.loopinfo*, %struct.loopinfo** %5, align 8
  %121 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  br label %135

122:                                              ; preds = %72
  %123 = load i32*, i32** %4, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = load i32, i32* @OP_LOADNIL, align 4
  %128 = call i32 (...) @cursp()
  %129 = call i32 @genop_1(%struct.TYPE_10__* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %122
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = load i32, i32* @OP_BREAK, align 4
  %133 = call i32 (...) @cursp()
  %134 = call i32 @gen_return(%struct.TYPE_10__* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %112
  br label %136

136:                                              ; preds = %61, %135, %12
  ret void
}

declare dso_local i32 @codegen(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @raise_error(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @gen_retval(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @genop_1(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @gen_move(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @genjmp(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @gen_return(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
