; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_sha1.c_sha1_update_block.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_sha1.c_sha1_update_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @sha1_update_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha1_update_block(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  store i64 0, i64* %13, align 8
  br label %44

44:                                               ; preds = %148, %2
  %45 = load i64, i64* %13, align 8
  %46 = icmp ult i64 %45, 80
  br i1 %46, label %47, label %151

47:                                               ; preds = %44
  %48 = load i64, i64* %13, align 8
  %49 = icmp ult i64 %48, 16
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @read32_be(i32* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %53
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32* %56, i32** %4, align 8
  br label %87

57:                                               ; preds = %47
  %58 = load i64, i64* %13, align 8
  %59 = sub i64 %58, 3
  %60 = urem i64 %59, 16
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %13, align 8
  %64 = sub i64 %63, 8
  %65 = urem i64 %64, 16
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %62, %67
  %69 = load i64, i64* %13, align 8
  %70 = sub i64 %69, 14
  %71 = urem i64 %70, 16
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %68, %73
  %75 = load i64, i64* %13, align 8
  %76 = sub i64 %75, 16
  %77 = urem i64 %76, 16
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %74, %79
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @rotl32(i32 %81, i32 1)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i64, i64* %13, align 8
  %85 = urem i64 %84, 16
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %57, %50
  %88 = load i64, i64* %13, align 8
  %89 = icmp ule i64 %88, 19
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %95, %96
  %98 = or i32 %93, %97
  store i32 %98, i32* %14, align 4
  store i32 1518500249, i32* %15, align 4
  br label %131

99:                                               ; preds = %87
  %100 = load i64, i64* %13, align 8
  %101 = icmp ule i64 %100, 39
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = xor i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = xor i32 %105, %106
  store i32 %107, i32* %14, align 4
  store i32 1859775393, i32* %15, align 4
  br label %130

108:                                              ; preds = %99
  %109 = load i64, i64* %13, align 8
  %110 = icmp ule i64 %109, 59
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = and i32 %115, %116
  %118 = or i32 %114, %117
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %119, %120
  %122 = or i32 %118, %121
  store i32 %122, i32* %14, align 4
  store i32 -1894007588, i32* %15, align 4
  br label %129

123:                                              ; preds = %108
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = xor i32 %124, %125
  %127 = load i32, i32* %10, align 4
  %128 = xor i32 %126, %127
  store i32 %128, i32* %14, align 4
  store i32 -899497514, i32* %15, align 4
  br label %129

129:                                              ; preds = %123, %111
  br label %130

130:                                              ; preds = %129, %102
  br label %131

131:                                              ; preds = %130, %90
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @rotl32(i32 %132, i32 5)
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @rotl32(i32 %144, i32 30)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %131
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %13, align 8
  br label %44

151:                                              ; preds = %44
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %152
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %159
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %166
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %173
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %180
  store i32 %186, i32* %184, align 4
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  ret void
}

declare dso_local i32 @read32_be(i32*) #1

declare dso_local i32 @rotl32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
