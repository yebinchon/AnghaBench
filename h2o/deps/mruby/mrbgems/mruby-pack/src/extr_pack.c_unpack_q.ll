; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_q.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@PACK_FLAG_SIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot unpack to Fixnum: %lld\00", align 1
@E_RANGE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot unpack to Fixnum: %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32)* @unpack_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_q(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [60 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @PACK_FLAG_LITTLEENDIAN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 7, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  br label %24

23:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %24

24:                                               ; preds = %23, %22
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = mul nsw i32 %29, 256
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %30, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %25

44:                                               ; preds = %25
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @FIXABLE(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @snprintf(i8* %55, i32 60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @E_RANGE_ERROR, align 4
  %61 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %62 = call i32 @mrb_raise(i32* %59, i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %54, %49
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %16, align 4
  br label %80

65:                                               ; preds = %44
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @POSFIXABLE(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 @snprintf(i8* %70, i32 60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @E_RANGE_ERROR, align 4
  %76 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %77 = call i32 @mrb_raise(i32* %74, i32 %75, i8* %76)
  br label %78

78:                                               ; preds = %69, %65
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %78, %63
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @mrb_fixnum_value(i32 %83)
  %85 = call i32 @mrb_ary_push(i32* %81, i32 %82, i32 %84)
  ret i32 8
}

declare dso_local i32 @FIXABLE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @POSFIXABLE(i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
