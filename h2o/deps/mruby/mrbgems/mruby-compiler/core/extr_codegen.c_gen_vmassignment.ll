; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_vmassignment.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_gen_vmassignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@OP_AREF = common dso_local global i32 0, align 4
@NOVAL = common dso_local global i32 0, align 4
@OP_APOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32, i32)* @gen_vmassignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_vmassignment(i32* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %11, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %25, %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = call i32 (...) @cursp()
  store i32 %26, i32* %13, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @OP_AREF, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @genop_3(i32* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = call i32 (...) @push()
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @NOVAL, align 4
  %40 = call i32 @gen_assignment(i32* %34, %struct.TYPE_4__* %37, i32 %38, i32 %39)
  %41 = call i32 (...) @pop()
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %11, align 8
  br label %22

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %11, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %156

54:                                               ; preds = %48
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %12, align 8
  br label %65

65:                                               ; preds = %68, %59
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %12, align 8
  br label %65

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 (...) @cursp()
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @gen_move(i32* %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @push_n(i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @pop_n(i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @OP_APOST, align 4
  %89 = call i32 (...) @cursp()
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @genop_3(i32* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 1, i32* %9, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = icmp ne %struct.TYPE_4__* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %75
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = icmp ne %struct.TYPE_4__* %100, inttoptr (i64 -1 to %struct.TYPE_4__*)
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = call i32 (...) @cursp()
  %108 = load i32, i32* @NOVAL, align 4
  %109 = call i32 @gen_assignment(i32* %103, %struct.TYPE_4__* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %102, %97, %75
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = icmp ne %struct.TYPE_4__* %113, null
  br i1 %114, label %115, label %147

115:                                              ; preds = %110
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = icmp ne %struct.TYPE_4__* %120, null
  br i1 %121, label %122, label %147

122:                                              ; preds = %115
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  store %struct.TYPE_4__* %127, %struct.TYPE_4__** %11, align 8
  br label %128

128:                                              ; preds = %131, %122
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %130 = icmp ne %struct.TYPE_4__* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = call i32 (...) @cursp()
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* @NOVAL, align 4
  %140 = call i32 @gen_assignment(i32* %132, %struct.TYPE_4__* %135, i32 %138, i32 %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %11, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %128

146:                                              ; preds = %128
  br label %147

147:                                              ; preds = %146, %115, %110
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 (...) @cursp()
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @gen_move(i32* %151, i32 %152, i32 %153, i32 0)
  br label %155

155:                                              ; preds = %150, %147
  br label %156

156:                                              ; preds = %155, %48
  ret void
}

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @genop_3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @push(...) #1

declare dso_local i32 @gen_assignment(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @gen_move(i32*, i32, i32, i32) #1

declare dso_local i32 @push_n(i32) #1

declare dso_local i32 @pop_n(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
