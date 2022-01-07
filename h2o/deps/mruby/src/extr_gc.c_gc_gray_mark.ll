; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_gc_gray_mark.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_gc_gray_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RBasic = type { i32 }
%struct.RClass = type { i32 }
%struct.mrb_context = type { i64, i64, i64, i64, i32*, i32*, i32 }
%struct.RArray = type { i32 }
%struct.RObject = type { i32 }
%struct.RFiber = type { %struct.mrb_context* }
%struct.RHash = type { i32 }

@MRB_FIBER_TERMINATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.RBasic*)* @gc_gray_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gc_gray_mark(i32* %0, i32* %1, %struct.RBasic* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.RBasic*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca %struct.mrb_context*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.RArray*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.RBasic* %2, %struct.RBasic** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %16 = call i32 @gc_mark_children(i32* %13, i32* %14, %struct.RBasic* %15)
  %17 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %18 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %159 [
    i32 133, label %20
    i32 139, label %23
    i32 128, label %23
    i32 132, label %23
    i32 131, label %39
    i32 138, label %39
    i32 136, label %39
    i32 137, label %46
    i32 135, label %51
    i32 140, label %136
    i32 134, label %143
    i32 130, label %156
    i32 129, label %156
  ]

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %7, align 8
  br label %160

23:                                               ; preds = %3, %3, %3
  %24 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %25 = bitcast %struct.RBasic* %24 to %struct.RClass*
  store %struct.RClass* %25, %struct.RClass** %8, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %28 = bitcast %struct.RBasic* %27 to %struct.RObject*
  %29 = call i64 @mrb_gc_mark_iv_size(i32* %26, %struct.RObject* %28)
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %7, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.RClass*, %struct.RClass** %8, align 8
  %34 = call i64 @mrb_gc_mark_mt_size(i32* %32, %struct.RClass* %33)
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %160

39:                                               ; preds = %3, %3, %3
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %42 = bitcast %struct.RBasic* %41 to %struct.RObject*
  %43 = call i64 @mrb_gc_mark_iv_size(i32* %40, %struct.RObject* %42)
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %160

46:                                               ; preds = %3
  %47 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %48 = call i64 @MRB_ENV_STACK_LEN(%struct.RBasic* %47)
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %160

51:                                               ; preds = %3
  %52 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %53 = bitcast %struct.RBasic* %52 to %struct.RFiber*
  %54 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %53, i32 0, i32 0
  %55 = load %struct.mrb_context*, %struct.mrb_context** %54, align 8
  store %struct.mrb_context* %55, %struct.mrb_context** %9, align 8
  %56 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %57 = icmp ne %struct.mrb_context* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %60 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MRB_FIBER_TERMINATED, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %51
  br label %160

65:                                               ; preds = %58
  %66 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %67 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %70 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %68, %71
  store i64 %72, i64* %10, align 8
  %73 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %74 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %79 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @ci_nregs(i32* %80)
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %77, %65
  %85 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %86 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %87, %88
  %90 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %91 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ugt i64 %89, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %96 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %99 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %97, %100
  store i64 %101, i64* %10, align 8
  br label %102

102:                                              ; preds = %94, %84
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %7, align 8
  %106 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %107 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %7, align 8
  %111 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %112 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %132

115:                                              ; preds = %102
  store i64 0, i64* %10, align 8
  %116 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %117 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %11, align 8
  br label %119

119:                                              ; preds = %126, %115
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.mrb_context*, %struct.mrb_context** %9, align 8
  %122 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ule i32* %120, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %10, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %11, align 8
  br label %119

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131, %102
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %7, align 8
  br label %160

136:                                              ; preds = %3
  %137 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %138 = bitcast %struct.RBasic* %137 to %struct.RArray*
  store %struct.RArray* %138, %struct.RArray** %12, align 8
  %139 = load %struct.RArray*, %struct.RArray** %12, align 8
  %140 = call i64 @ARY_LEN(%struct.RArray* %139)
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %7, align 8
  br label %160

143:                                              ; preds = %3
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %146 = bitcast %struct.RBasic* %145 to %struct.RObject*
  %147 = call i64 @mrb_gc_mark_iv_size(i32* %144, %struct.RObject* %146)
  %148 = load i64, i64* %7, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %7, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %152 = bitcast %struct.RBasic* %151 to %struct.RHash*
  %153 = call i64 @mrb_gc_mark_hash_size(i32* %150, %struct.RHash* %152)
  %154 = load i64, i64* %7, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %7, align 8
  br label %160

156:                                              ; preds = %3, %3
  %157 = load i64, i64* %7, align 8
  %158 = add i64 %157, 2
  store i64 %158, i64* %7, align 8
  br label %160

159:                                              ; preds = %3
  br label %160

160:                                              ; preds = %159, %156, %143, %136, %132, %64, %46, %39, %23, %20
  %161 = load i64, i64* %7, align 8
  ret i64 %161
}

declare dso_local i32 @gc_mark_children(i32*, i32*, %struct.RBasic*) #1

declare dso_local i64 @mrb_gc_mark_iv_size(i32*, %struct.RObject*) #1

declare dso_local i64 @mrb_gc_mark_mt_size(i32*, %struct.RClass*) #1

declare dso_local i64 @MRB_ENV_STACK_LEN(%struct.RBasic*) #1

declare dso_local i64 @ci_nregs(i32*) #1

declare dso_local i64 @ARY_LEN(%struct.RArray*) #1

declare dso_local i64 @mrb_gc_mark_hash_size(i32*, %struct.RHash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
