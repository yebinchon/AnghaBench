; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_khazad.c_khazad_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_khazad.c_khazad_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KHAZAD_ROUNDS = common dso_local global i32 0, align 4
@T0 = common dso_local global i32* null, align 8
@T1 = common dso_local global i32* null, align 8
@T2 = common dso_local global i32* null, align 8
@T3 = common dso_local global i32* null, align 8
@T4 = common dso_local global i32* null, align 8
@T5 = common dso_local global i32* null, align 8
@T6 = common dso_local global i32* null, align 8
@T7 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @khazad_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @khazad_crypt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @KHAZAD_ROUNDS, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be64_to_cpu(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %18, %21
  store i32 %22, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %95, %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @KHAZAD_ROUNDS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %98

27:                                               ; preds = %23
  %28 = load i32*, i32** @T0, align 8
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 56
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @T1, align 8
  %35 = load i32, i32* %10, align 4
  %36 = ashr i32 %35, 48
  %37 = and i32 %36, 255
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %33, %40
  %42 = load i32*, i32** @T2, align 8
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 40
  %45 = and i32 %44, 255
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %41, %48
  %50 = load i32*, i32** @T3, align 8
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %51, 32
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %49, %56
  %58 = load i32*, i32** @T4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = ashr i32 %59, 24
  %61 = and i32 %60, 255
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %57, %64
  %66 = load i32*, i32** @T5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = ashr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %65, %72
  %74 = load i32*, i32** @T6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %73, %80
  %82 = load i32*, i32** @T7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, 255
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %81, %87
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %88, %93
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %27
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %23

98:                                               ; preds = %23
  %99 = load i32*, i32** @T0, align 8
  %100 = load i32, i32* %10, align 4
  %101 = ashr i32 %100, 56
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = and i64 %105, -72057594037927936
  %107 = load i32*, i32** @T1, align 8
  %108 = load i32, i32* %10, align 4
  %109 = ashr i32 %108, 48
  %110 = and i32 %109, 255
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = and i64 %114, 71776119061217280
  %116 = xor i64 %106, %115
  %117 = load i32*, i32** @T2, align 8
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %118, 40
  %120 = and i32 %119, 255
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = and i64 %124, 280375465082880
  %126 = xor i64 %116, %125
  %127 = load i32*, i32** @T3, align 8
  %128 = load i32, i32* %10, align 4
  %129 = ashr i32 %128, 32
  %130 = and i32 %129, 255
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = and i64 %134, 1095216660480
  %136 = xor i64 %126, %135
  %137 = load i32*, i32** @T4, align 8
  %138 = load i32, i32* %10, align 4
  %139 = ashr i32 %138, 24
  %140 = and i32 %139, 255
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = and i64 %144, 4278190080
  %146 = xor i64 %136, %145
  %147 = load i32*, i32** @T5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = ashr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = and i64 %154, 16711680
  %156 = xor i64 %146, %155
  %157 = load i32*, i32** @T6, align 8
  %158 = load i32, i32* %10, align 4
  %159 = ashr i32 %158, 8
  %160 = and i32 %159, 255
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = and i64 %164, 65280
  %166 = xor i64 %156, %165
  %167 = load i32*, i32** @T7, align 8
  %168 = load i32, i32* %10, align 4
  %169 = and i32 %168, 255
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = and i64 %173, 255
  %175 = xor i64 %166, %174
  %176 = load i32*, i32** %4, align 8
  %177 = load i32, i32* @KHAZAD_ROUNDS, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = xor i64 %175, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @cpu_to_be64(i32 %184)
  %186 = load i32*, i32** %8, align 8
  store i32 %185, i32* %186, align 4
  ret void
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
