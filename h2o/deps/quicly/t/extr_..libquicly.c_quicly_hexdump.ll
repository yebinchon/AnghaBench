; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_hexdump.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quicly_hexdump(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @SIZE_MAX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 %19, 2
  %21 = add i64 %20, 1
  br label %34

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 5
  %25 = add i64 %24, 48
  %26 = add i64 %25, 2
  %27 = add i64 %26, 16
  %28 = add i64 %27, 1
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 15
  %31 = udiv i64 %30, 16
  %32 = mul i64 %28, %31
  %33 = add i64 %32, 1
  br label %34

34:                                               ; preds = %22, %18
  %35 = phi i64 [ %21, %18 ], [ %33, %22 ]
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i8* @malloc(i64 %36)
  store i8* %37, i8** %12, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i8* null, i8** %4, align 8
  br label %199

40:                                               ; preds = %34
  %41 = load i8*, i8** %12, align 8
  store i8* %41, i8** %13, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @SIZE_MAX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %59, %45
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i8*, i8** %13, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @quicly_byte_to_hex(i8* %51, i64 %55)
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %58, i8** %13, align 8
  br label %59

59:                                               ; preds = %50
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %46

62:                                               ; preds = %46
  br label %186

63:                                               ; preds = %40
  store i64 0, i64* %9, align 8
  br label %64

64:                                               ; preds = %182, %63
  %65 = load i64, i64* %9, align 8
  %66 = mul i64 %65, 16
  %67 = load i64, i64* %6, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %185

69:                                               ; preds = %64
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %77, %69
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %13, align 8
  store i8 32, i8* %75, align 1
  br label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %70

80:                                               ; preds = %70
  %81 = load i8*, i8** %13, align 8
  %82 = load i64, i64* %9, align 8
  %83 = lshr i64 %82, 4
  %84 = and i64 %83, 255
  %85 = call i32 @quicly_byte_to_hex(i8* %81, i64 %84)
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load i64, i64* %9, align 8
  %90 = shl i64 %89, 4
  %91 = and i64 %90, 255
  %92 = call i32 @quicly_byte_to_hex(i8* %88, i64 %91)
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  store i8* %94, i8** %13, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %13, align 8
  store i8 32, i8* %95, align 1
  store i64 0, i64* %10, align 8
  br label %97

97:                                               ; preds = %132, %80
  %98 = load i64, i64* %10, align 8
  %99 = icmp ult i64 %98, 16
  br i1 %99, label %100, label %135

100:                                              ; preds = %97
  %101 = load i64, i64* %10, align 8
  %102 = icmp eq i64 %101, 8
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 45, i32 32
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %13, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %13, align 8
  store i8 %105, i8* %106, align 1
  %108 = load i64, i64* %9, align 8
  %109 = mul i64 %108, 16
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %109, %110
  %112 = load i64, i64* %6, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %100
  %115 = load i8*, i8** %13, align 8
  %116 = load i64*, i64** %5, align 8
  %117 = load i64, i64* %9, align 8
  %118 = mul i64 %117, 16
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %118, %119
  %121 = getelementptr inbounds i64, i64* %116, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @quicly_byte_to_hex(i8* %115, i64 %122)
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  store i8* %125, i8** %13, align 8
  br label %131

126:                                              ; preds = %100
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %13, align 8
  store i8 32, i8* %127, align 1
  %129 = load i8*, i8** %13, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %13, align 8
  store i8 32, i8* %129, align 1
  br label %131

131:                                              ; preds = %126, %114
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %10, align 8
  br label %97

135:                                              ; preds = %97
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %13, align 8
  store i8 32, i8* %136, align 1
  %138 = load i8*, i8** %13, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %13, align 8
  store i8 32, i8* %138, align 1
  store i64 0, i64* %10, align 8
  br label %140

140:                                              ; preds = %176, %135
  %141 = load i64, i64* %10, align 8
  %142 = icmp ult i64 %141, 16
  br i1 %142, label %143, label %179

143:                                              ; preds = %140
  %144 = load i64, i64* %9, align 8
  %145 = mul i64 %144, 16
  %146 = load i64, i64* %10, align 8
  %147 = add i64 %145, %146
  %148 = load i64, i64* %6, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %143
  %151 = load i64*, i64** %5, align 8
  %152 = load i64, i64* %9, align 8
  %153 = mul i64 %152, 16
  %154 = load i64, i64* %10, align 8
  %155 = add i64 %153, %154
  %156 = getelementptr inbounds i64, i64* %151, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp sle i32 32, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %150
  %162 = load i32, i32* %14, align 4
  %163 = icmp slt i32 %162, 127
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* %14, align 4
  br label %167

166:                                              ; preds = %161, %150
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ 46, %166 ]
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %13, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %13, align 8
  store i8 %169, i8* %170, align 1
  br label %175

172:                                              ; preds = %143
  %173 = load i8*, i8** %13, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %13, align 8
  store i8 32, i8* %173, align 1
  br label %175

175:                                              ; preds = %172, %167
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %10, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %10, align 8
  br label %140

179:                                              ; preds = %140
  %180 = load i8*, i8** %13, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %13, align 8
  store i8 10, i8* %180, align 1
  br label %182

182:                                              ; preds = %179
  %183 = load i64, i64* %9, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %9, align 8
  br label %64

185:                                              ; preds = %64
  br label %186

186:                                              ; preds = %185, %62
  %187 = load i8*, i8** %13, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %13, align 8
  store i8 0, i8* %187, align 1
  %189 = load i8*, i8** %13, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = ptrtoint i8* %189 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = load i64, i64* %11, align 8
  %195 = icmp ule i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load i8*, i8** %12, align 8
  store i8* %198, i8** %4, align 8
  br label %199

199:                                              ; preds = %186, %39
  %200 = load i8*, i8** %4, align 8
  ret i8* %200
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @quicly_byte_to_hex(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
