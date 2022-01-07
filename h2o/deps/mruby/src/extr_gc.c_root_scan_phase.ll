; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_root_scan_phase.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_root_scan_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.RBasic**, i32*, i32* }
%struct.RBasic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*)* @root_scan_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @root_scan_phase(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i32 @is_minor_gc(%struct.TYPE_10__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32 @mrb_gc_mark_gv(%struct.TYPE_9__* %16)
  store i32 0, i32* %5, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %35, %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.RBasic**, %struct.RBasic*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.RBasic*, %struct.RBasic** %29, i64 %31
  %33 = load %struct.RBasic*, %struct.RBasic** %32, align 8
  %34 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %26, %struct.RBasic* %33)
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 23
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.RBasic*
  %44 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %39, %struct.RBasic* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 22
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.RBasic*
  %50 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %45, %struct.RBasic* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 21
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.RBasic*
  %56 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %51, %struct.RBasic* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 20
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.RBasic*
  %62 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %57, %struct.RBasic* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 19
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.RBasic*
  %68 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %63, %struct.RBasic* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 18
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.RBasic*
  %74 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %69, %struct.RBasic* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 17
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.RBasic*
  %80 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %75, %struct.RBasic* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 16
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.RBasic*
  %86 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %81, %struct.RBasic* %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 15
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.RBasic*
  %92 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %87, %struct.RBasic* %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 14
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.RBasic*
  %98 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %93, %struct.RBasic* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 13
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.RBasic*
  %104 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %99, %struct.RBasic* %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 12
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to %struct.RBasic*
  %110 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %105, %struct.RBasic* %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 11
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.RBasic*
  %116 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %111, %struct.RBasic* %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 10
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to %struct.RBasic*
  %122 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %117, %struct.RBasic* %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to %struct.RBasic*
  %128 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %123, %struct.RBasic* %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.RBasic*
  %134 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %129, %struct.RBasic* %133)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to %struct.RBasic*
  %140 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %135, %struct.RBasic* %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.RBasic*
  %146 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %141, %struct.RBasic* %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to %struct.RBasic*
  %152 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %147, %struct.RBasic* %151)
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to %struct.RBasic*
  %158 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %153, %struct.RBasic* %157)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.RBasic*
  %164 = call i32 @mrb_gc_mark(%struct.TYPE_9__* %159, %struct.RBasic* %163)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @mark_context(%struct.TYPE_9__* %165, i64 %168)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %172, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %38
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @mark_context(%struct.TYPE_9__* %178, i64 %181)
  br label %183

183:                                              ; preds = %177, %38
  ret void
}

declare dso_local i32 @is_minor_gc(%struct.TYPE_10__*) #1

declare dso_local i32 @mrb_gc_mark_gv(%struct.TYPE_9__*) #1

declare dso_local i32 @mrb_gc_mark(%struct.TYPE_9__*, %struct.RBasic*) #1

declare dso_local i32 @mark_context(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
