; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_remove_method.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-metaprog/src/extr_metaprog.c_remove_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@mt = common dso_local global i32 0, align 4
@h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"method_removed\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"method '%S' not defined in %S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @remove_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_method(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.RClass* @mrb_class_ptr(i32 %9)
  store %struct.RClass* %10, %struct.RClass** %7, align 8
  %11 = load i32, i32* @mt, align 4
  %12 = call i32 @khash_t(i32 %11)
  %13 = load i32, i32* @h, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load %struct.RClass*, %struct.RClass** %7, align 8
  %16 = call i32 @MRB_CLASS_ORIGIN(%struct.RClass* %15)
  %17 = load %struct.RClass*, %struct.RClass** %7, align 8
  %18 = getelementptr inbounds %struct.RClass, %struct.RClass* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @h, align 4
  %20 = load i32, i32* @h, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %3
  %23 = load i32, i32* @mt, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @h, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @kh_get(i32 %23, i32* %24, i32 %25, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @h, align 4
  %30 = call i64 @kh_end(i32 %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load i32, i32* @mt, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @h, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @kh_del(i32 %33, i32* %34, i32 %35, i64 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @mrb_symbol_value(i32 %40)
  %42 = call i32 @mrb_funcall(i32* %38, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1, i32 %41)
  br label %52

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @mrb_sym2str(i32* %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @mrb_name_error(i32* %45, i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %32
  ret void
}

declare dso_local %struct.RClass* @mrb_class_ptr(i32) #1

declare dso_local i32 @khash_t(i32) #1

declare dso_local i32 @MRB_CLASS_ORIGIN(%struct.RClass*) #1

declare dso_local i64 @kh_get(i32, i32*, i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local i32 @kh_del(i32, i32*, i32, i64) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @mrb_symbol_value(i32) #1

declare dso_local i32 @mrb_name_error(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @mrb_sym2str(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
