; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/lib/extr_memmove.c_memmove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/lib/extr_memmove.c_memmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memmove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %4, align 8
  br label %178

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %93

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %23, 8
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = xor i64 %26, %27
  %29 = and i64 %28, 3
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %18
  br label %79

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = and i64 %33, 1
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  %39 = inttoptr i64 %37 to i8*
  %40 = load i8, i8* %39, align 1
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  %43 = inttoptr i64 %41 to i8*
  store i8 %40, i8* %43, align 1
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %36, %32
  %47 = load i64, i64* %8, align 8
  %48 = and i64 %47, 2
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = inttoptr i64 %51 to i16*
  %53 = load i16, i16* %52, align 2
  %54 = load i64, i64* %8, align 8
  %55 = inttoptr i64 %54 to i16*
  store i16 %53, i16* %55, align 2
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 2
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 2
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %60, 2
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %50, %46
  br label %63

63:                                               ; preds = %66, %62
  %64 = load i64, i64* %7, align 8
  %65 = icmp ugt i64 %64, 3
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i64, i64* %9, align 8
  %68 = inttoptr i64 %67 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = inttoptr i64 %70 to i64*
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = sub i64 %76, 4
  store i64 %77, i64* %7, align 8
  br label %63

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %31
  br label %80

80:                                               ; preds = %84, %79
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %7, align 8
  %83 = icmp ne i64 %81, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  %87 = inttoptr i64 %85 to i8*
  %88 = load i8, i8* %87, align 1
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  %91 = inttoptr i64 %89 to i8*
  store i8 %88, i8* %91, align 1
  br label %80

92:                                               ; preds = %80
  br label %176

93:                                               ; preds = %14
  %94 = load i8*, i8** %5, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %95, %96
  store i64 %97, i64* %8, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %99, %100
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp ult i64 %102, 8
  br i1 %103, label %110, label %104

104:                                              ; preds = %93
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = xor i64 %105, %106
  %108 = and i64 %107, 3
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %93
  br label %160

111:                                              ; preds = %104
  %112 = load i64, i64* %8, align 8
  %113 = and i64 %112, 1
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %7, align 8
  %121 = add i64 %120, -1
  store i64 %121, i64* %7, align 8
  %122 = load i64, i64* %9, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = load i8, i8* %123, align 1
  %125 = load i64, i64* %8, align 8
  %126 = inttoptr i64 %125 to i8*
  store i8 %124, i8* %126, align 1
  br label %127

127:                                              ; preds = %115, %111
  %128 = load i64, i64* %8, align 8
  %129 = and i64 %128, 2
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %127
  %132 = load i64, i64* %9, align 8
  %133 = sub i64 %132, 2
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %8, align 8
  %135 = sub i64 %134, 2
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* %7, align 8
  %137 = sub i64 %136, 2
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* %9, align 8
  %139 = inttoptr i64 %138 to i16*
  %140 = load i16, i16* %139, align 2
  %141 = load i64, i64* %8, align 8
  %142 = inttoptr i64 %141 to i16*
  store i16 %140, i16* %142, align 2
  br label %143

143:                                              ; preds = %131, %127
  br label %144

144:                                              ; preds = %147, %143
  %145 = load i64, i64* %7, align 8
  %146 = icmp ugt i64 %145, 3
  br i1 %146, label %147, label %159

147:                                              ; preds = %144
  %148 = load i64, i64* %9, align 8
  %149 = sub i64 %148, 4
  store i64 %149, i64* %9, align 8
  %150 = load i64, i64* %8, align 8
  %151 = sub i64 %150, 4
  store i64 %151, i64* %8, align 8
  %152 = load i64, i64* %7, align 8
  %153 = sub i64 %152, 4
  store i64 %153, i64* %7, align 8
  %154 = load i64, i64* %9, align 8
  %155 = inttoptr i64 %154 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = inttoptr i64 %157 to i64*
  store i64 %156, i64* %158, align 8
  br label %144

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159, %110
  br label %161

161:                                              ; preds = %165, %160
  %162 = load i64, i64* %7, align 8
  %163 = add i64 %162, -1
  store i64 %163, i64* %7, align 8
  %164 = icmp ne i64 %162, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, -1
  store i64 %167, i64* %9, align 8
  %168 = load i64, i64* %8, align 8
  %169 = add i64 %168, -1
  store i64 %169, i64* %8, align 8
  %170 = load i64, i64* %9, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = load i8, i8* %171, align 1
  %173 = load i64, i64* %8, align 8
  %174 = inttoptr i64 %173 to i8*
  store i8 %172, i8* %174, align 1
  br label %161

175:                                              ; preds = %161
  br label %176

176:                                              ; preds = %175, %92
  %177 = load i8*, i8** %5, align 8
  store i8* %177, i8** %4, align 8
  br label %178

178:                                              ; preds = %176, %12
  %179 = load i8*, i8** %4, align 8
  ret i8* %179
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
