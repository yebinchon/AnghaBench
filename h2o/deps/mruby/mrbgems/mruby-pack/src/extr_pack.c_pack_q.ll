; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_q.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @pack_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_q(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %15 = add nsw i32 %14, 8
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
  br i1 %23, label %24, label %97

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
  %61 = load i32, i32* %11, align 4
  %62 = ashr i32 %61, 32
  %63 = trunc i32 %62 to i8
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @RSTRING_PTR(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 %63, i8* %69, align 1
  %70 = load i32, i32* %11, align 4
  %71 = ashr i32 %70, 40
  %72 = trunc i32 %71 to i8
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @RSTRING_PTR(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8 %72, i8* %78, align 1
  %79 = load i32, i32* %11, align 4
  %80 = ashr i32 %79, 48
  %81 = trunc i32 %80 to i8
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @RSTRING_PTR(i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 6
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 %81, i8* %87, align 1
  %88 = load i32, i32* %11, align 4
  %89 = ashr i32 %88, 56
  %90 = trunc i32 %89 to i8
  %91 = load i32, i32* %8, align 4
  %92 = call i8* @RSTRING_PTR(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 7
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 %90, i8* %96, align 1
  br label %170

97:                                               ; preds = %5
  %98 = load i32, i32* %11, align 4
  %99 = ashr i32 %98, 56
  %100 = trunc i32 %99 to i8
  %101 = load i32, i32* %8, align 4
  %102 = call i8* @RSTRING_PTR(i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 0
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 %100, i8* %106, align 1
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %107, 48
  %109 = trunc i32 %108 to i8
  %110 = load i32, i32* %8, align 4
  %111 = call i8* @RSTRING_PTR(i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  store i8 %109, i8* %115, align 1
  %116 = load i32, i32* %11, align 4
  %117 = ashr i32 %116, 40
  %118 = trunc i32 %117 to i8
  %119 = load i32, i32* %8, align 4
  %120 = call i8* @RSTRING_PTR(i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  store i8 %118, i8* %124, align 1
  %125 = load i32, i32* %11, align 4
  %126 = ashr i32 %125, 32
  %127 = trunc i32 %126 to i8
  %128 = load i32, i32* %8, align 4
  %129 = call i8* @RSTRING_PTR(i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 %127, i8* %133, align 1
  %134 = load i32, i32* %11, align 4
  %135 = ashr i32 %134, 24
  %136 = trunc i32 %135 to i8
  %137 = load i32, i32* %8, align 4
  %138 = call i8* @RSTRING_PTR(i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8 %136, i8* %142, align 1
  %143 = load i32, i32* %11, align 4
  %144 = ashr i32 %143, 16
  %145 = trunc i32 %144 to i8
  %146 = load i32, i32* %8, align 4
  %147 = call i8* @RSTRING_PTR(i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 5
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8 %145, i8* %151, align 1
  %152 = load i32, i32* %11, align 4
  %153 = ashr i32 %152, 8
  %154 = trunc i32 %153 to i8
  %155 = load i32, i32* %8, align 4
  %156 = call i8* @RSTRING_PTR(i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 6
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8 %154, i8* %160, align 1
  %161 = load i32, i32* %11, align 4
  %162 = and i32 %161, 255
  %163 = trunc i32 %162 to i8
  %164 = load i32, i32* %8, align 4
  %165 = call i8* @RSTRING_PTR(i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 7
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 %163, i8* %169, align 1
  br label %170

170:                                              ; preds = %97, %24
  ret i32 8
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
