; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_l.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @pack_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_l(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, 4
  %16 = call i32 @str_len_ensure(i32* %12, i32 %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @mrb_fixnum(i32 %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PACK_FLAG_LITTLEENDIAN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %5
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @RSTRING_PTR(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 0
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 %27, i8* %33, align 1
  %34 = load i32, i32* %11, align 4
  %35 = ashr i32 %34, 8
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* %8, align 4
  %38 = call i8* @RSTRING_PTR(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 %36, i8* %42, align 1
  %43 = load i32, i32* %11, align 4
  %44 = ashr i32 %43, 16
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @RSTRING_PTR(i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 %45, i8* %51, align 1
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %52, 24
  %54 = trunc i32 %53 to i8
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @RSTRING_PTR(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 %54, i8* %60, align 1
  br label %98

61:                                               ; preds = %5
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, 24
  %64 = trunc i32 %63 to i8
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @RSTRING_PTR(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 0
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 %64, i8* %70, align 1
  %71 = load i32, i32* %11, align 4
  %72 = ashr i32 %71, 16
  %73 = trunc i32 %72 to i8
  %74 = load i32, i32* %8, align 4
  %75 = call i8* @RSTRING_PTR(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 %73, i8* %79, align 1
  %80 = load i32, i32* %11, align 4
  %81 = ashr i32 %80, 8
  %82 = trunc i32 %81 to i8
  %83 = load i32, i32* %8, align 4
  %84 = call i8* @RSTRING_PTR(i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 %82, i8* %88, align 1
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %8, align 4
  %93 = call i8* @RSTRING_PTR(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %91, i8* %97, align 1
  br label %98

98:                                               ; preds = %61, %24
  ret i32 4
}

declare dso_local i32 @str_len_ensure(i32*, i32, i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
