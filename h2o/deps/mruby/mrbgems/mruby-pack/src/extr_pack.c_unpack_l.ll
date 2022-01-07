; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_l.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@PACK_FLAG_SIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot unpack to Fixnum: %ld\00", align 1
@E_RANGE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot unpack to Fixnum: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32)* @unpack_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_l(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [60 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @PACK_FLAG_LITTLEENDIAN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = mul nsw i32 %23, 256
  %25 = mul nsw i32 %24, 256
  %26 = mul nsw i32 %25, 256
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = mul nsw i32 %30, 256
  %32 = mul nsw i32 %31, 256
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %12, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = mul nsw i32 %38, 256
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %77

48:                                               ; preds = %5
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = mul nsw i32 %52, 256
  %54 = mul nsw i32 %53, 256
  %55 = mul nsw i32 %54, 256
  store i32 %55, i32* %12, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = mul nsw i32 %59, 256
  %61 = mul nsw i32 %60, 256
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = mul nsw i32 %67, 256
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %48, %19
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @FIXABLE(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 @snprintf(i8* %88, i32 60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @E_RANGE_ERROR, align 4
  %94 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %95 = call i32 @mrb_raise(i32* %92, i32 %93, i8* %94)
  br label %96

96:                                               ; preds = %87, %82
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %13, align 4
  br label %113

98:                                               ; preds = %77
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @POSFIXABLE(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = call i32 @snprintf(i8* %103, i32 60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* @E_RANGE_ERROR, align 4
  %109 = getelementptr inbounds [60 x i8], [60 x i8]* %11, i64 0, i64 0
  %110 = call i32 @mrb_raise(i32* %107, i32 %108, i8* %109)
  br label %111

111:                                              ; preds = %102, %98
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %111, %96
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @mrb_fixnum_value(i32 %116)
  %118 = call i32 @mrb_ary_push(i32* %114, i32 %115, i32 %117)
  ret i32 4
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
