; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_digest.c_basecheck.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_digest.c_basecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_md = type { i32 }
%struct.RClass = type { i32 }

@TYPESYM = common dso_local global i32 0, align 4
@E_NOTIMP_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Digest::Base is an abstract class\00", align 1
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no md found (BUG?)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.mrb_md**)* @basecheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basecheck(i32* %0, i32 %1, %struct.mrb_md** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mrb_md**, align 8
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca %struct.mrb_md*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mrb_md** %2, %struct.mrb_md*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.RClass* @mrb_obj_class(i32* %10, i32 %11)
  store %struct.RClass* %12, %struct.RClass** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.RClass*, %struct.RClass** %7, align 8
  %15 = call i32 @mrb_obj_value(%struct.RClass* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @TYPESYM, align 4
  %18 = call i32 @mrb_intern_lit(i32* %16, i32 %17)
  %19 = call i32 @mrb_const_get(i32* %13, i32 %15, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @mrb_nil_p(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @E_NOTIMP_ERROR, align 4
  %26 = call i32 @mrb_raise(i32* %24, i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @DATA_PTR(i32 %28)
  %30 = inttoptr i64 %29 to %struct.mrb_md*
  store %struct.mrb_md* %30, %struct.mrb_md** %8, align 8
  %31 = load %struct.mrb_md*, %struct.mrb_md** %8, align 8
  %32 = icmp ne %struct.mrb_md* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %36 = call i32 @mrb_raise(i32* %34, i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.mrb_md**, %struct.mrb_md*** %6, align 8
  %39 = icmp ne %struct.mrb_md** %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.mrb_md*, %struct.mrb_md** %8, align 8
  %42 = load %struct.mrb_md**, %struct.mrb_md*** %6, align 8
  store %struct.mrb_md* %41, %struct.mrb_md** %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  ret void
}

declare dso_local %struct.RClass* @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @mrb_const_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_intern_lit(i32*, i32) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i64 @DATA_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
