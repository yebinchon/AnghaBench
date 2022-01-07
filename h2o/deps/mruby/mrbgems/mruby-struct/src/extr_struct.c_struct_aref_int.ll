; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_aref_int.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_aref_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INDEX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"offset %S too small for struct(size:%S)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"offset %S too large for struct(size:%S)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @struct_aref_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @struct_aref_int(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ult i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @RSTRUCT_LEN(i32 %10)
  %12 = load i64, i64* %6, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %9, %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @E_INDEX_ERROR, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @mrb_fixnum_value(i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @RSTRUCT_LEN(i32 %22)
  %24 = call i32 @mrb_fixnum_value(i64 %23)
  %25 = call i32 @mrb_raisef(i32* %18, i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @RSTRUCT_LEN(i32 %27)
  %29 = load i64, i64* %6, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @E_INDEX_ERROR, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @mrb_fixnum_value(i64 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @RSTRUCT_LEN(i32 %36)
  %38 = call i32 @mrb_fixnum_value(i64 %37)
  %39 = call i32 @mrb_raisef(i32* %32, i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i32, i32* %5, align 4
  %42 = call i32* @RSTRUCT_PTR(i32 %41)
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  ret i32 %45
}

declare dso_local i64 @RSTRUCT_LEN(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

declare dso_local i32* @RSTRUCT_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
