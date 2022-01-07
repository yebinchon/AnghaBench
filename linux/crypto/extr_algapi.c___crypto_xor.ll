; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c___crypto_xor.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c___crypto_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS = common dso_local global i32 0, align 4
@CONFIG_64BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__crypto_xor(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS, align 4
  %13 = call i64 @IS_ENABLED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %68, label %15

15:                                               ; preds = %4
  store i32 8, i32* %10, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = load i32*, i32** %6, align 8
  %19 = ptrtoint i32* %18 to i64
  %20 = xor i64 %17, %19
  %21 = load i32*, i32** %5, align 8
  %22 = ptrtoint i32* %21 to i64
  %23 = load i32*, i32** %7, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = xor i64 %22, %24
  %26 = or i64 %20, %25
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = and i64 %26, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %15
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @__ffs(i32 %35)
  %37 = shl i32 1, %36
  br label %40

38:                                               ; preds = %15
  %39 = load i32, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %55, %40
  %43 = load i32*, i32** %5, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = and i64 %44, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = icmp ugt i32 %51, 0
  br label %53

53:                                               ; preds = %50, %42
  %54 = phi i1 [ false, %42 ], [ %52, %50 ]
  br i1 %54, label %55, label %67

55:                                               ; preds = %53
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %6, align 8
  %58 = load i32, i32* %56, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %7, align 8
  %61 = load i32, i32* %59, align 4
  %62 = xor i32 %58, %61
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, -1
  store i32 %66, i32* %8, align 4
  br label %42

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %4
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i32, i32* @CONFIG_64BIT, align 4
  %71 = call i64 @IS_ENABLED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = icmp uge i32 %74, 8
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 7
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %76, %73, %69
  %82 = phi i1 [ false, %73 ], [ false, %69 ], [ %80, %76 ]
  br i1 %82, label %83, label %98

83:                                               ; preds = %81
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %85, %87
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 8
  store i32* %91, i32** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 8
  store i32* %93, i32** %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  store i32* %95, i32** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sub i32 %96, 8
  store i32 %97, i32* %8, align 4
  br label %69

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %109, %98
  %100 = load i32, i32* %8, align 4
  %101 = icmp uge i32 %100, 4
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 3
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br label %107

107:                                              ; preds = %102, %99
  %108 = phi i1 [ false, %99 ], [ %106, %102 ]
  br i1 %108, label %109, label %124

109:                                              ; preds = %107
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = xor i32 %111, %113
  %115 = load i32*, i32** %5, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32* %117, i32** %5, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  store i32* %119, i32** %6, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32* %121, i32** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sub i32 %122, 4
  store i32 %123, i32* %8, align 4
  br label %99

124:                                              ; preds = %107
  br label %125

125:                                              ; preds = %135, %124
  %126 = load i32, i32* %8, align 4
  %127 = icmp uge i32 %126, 2
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br label %133

133:                                              ; preds = %128, %125
  %134 = phi i1 [ false, %125 ], [ %132, %128 ]
  br i1 %134, label %135, label %150

135:                                              ; preds = %133
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %137, %139
  %141 = load i32*, i32** %5, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32* %143, i32** %5, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32* %145, i32** %6, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32* %147, i32** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sub i32 %148, 2
  store i32 %149, i32* %8, align 4
  br label %125

150:                                              ; preds = %133
  br label %151

151:                                              ; preds = %155, %150
  %152 = load i32, i32* %8, align 4
  %153 = add i32 %152, -1
  store i32 %153, i32* %8, align 4
  %154 = icmp ne i32 %152, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %6, align 8
  %158 = load i32, i32* %156, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %7, align 8
  %161 = load i32, i32* %159, align 4
  %162 = xor i32 %158, %161
  %163 = load i32*, i32** %5, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %5, align 8
  store i32 %162, i32* %163, align 4
  br label %151

165:                                              ; preds = %151
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
