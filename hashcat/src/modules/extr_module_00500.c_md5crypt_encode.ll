; ModuleID = '/home/carl/AnghaBench/hashcat/src/modules/extr_module_00500.c_md5crypt_encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/modules/extr_module_00500.c_md5crypt_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @md5crypt_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md5crypt_encode(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 16
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 6
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 8
  %14 = or i32 %9, %13
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 12
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 0
  %19 = or i32 %14, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 63
  %22 = call i32 @int_to_itoa64(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 6
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 63
  %29 = call i32 @int_to_itoa64(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 6
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 63
  %36 = call i32 @int_to_itoa64(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 6
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 63
  %43 = call i32 @int_to_itoa64(i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %49, %53
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 13
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 0
  %59 = or i32 %54, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 63
  %62 = call i32 @int_to_itoa64(i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 6
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 63
  %69 = call i32 @int_to_itoa64(i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 6
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 63
  %76 = call i32 @int_to_itoa64(i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = ashr i32 %79, 6
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 63
  %83 = call i32 @int_to_itoa64(i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = load i32*, i32** %3, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 8
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = or i32 %89, %93
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 14
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 0
  %99 = or i32 %94, %98
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, 63
  %102 = call i32 @int_to_itoa64(i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = ashr i32 %105, 6
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, 63
  %109 = call i32 @int_to_itoa64(i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 9
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %5, align 4
  %113 = ashr i32 %112, 6
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, 63
  %116 = call i32 @int_to_itoa64(i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 10
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %5, align 4
  %120 = ashr i32 %119, 6
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, 63
  %123 = call i32 @int_to_itoa64(i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 11
  store i32 %123, i32* %125, align 4
  %126 = load i32*, i32** %3, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 16
  %130 = load i32*, i32** %3, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 9
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %129, %133
  %135 = load i32*, i32** %3, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 15
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 0
  %139 = or i32 %134, %138
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, 63
  %142 = call i32 @int_to_itoa64(i32 %141)
  %143 = load i32*, i32** %4, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 12
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %5, align 4
  %146 = ashr i32 %145, 6
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = and i32 %147, 63
  %149 = call i32 @int_to_itoa64(i32 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 13
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %5, align 4
  %153 = ashr i32 %152, 6
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, 63
  %156 = call i32 @int_to_itoa64(i32 %155)
  %157 = load i32*, i32** %4, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 14
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %5, align 4
  %160 = ashr i32 %159, 6
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 63
  %163 = call i32 @int_to_itoa64(i32 %162)
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 15
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %3, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 16
  %170 = load i32*, i32** %3, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 10
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 8
  %174 = or i32 %169, %173
  %175 = load i32*, i32** %3, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 5
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 0
  %179 = or i32 %174, %178
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %5, align 4
  %181 = and i32 %180, 63
  %182 = call i32 @int_to_itoa64(i32 %181)
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 16
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %5, align 4
  %186 = ashr i32 %185, 6
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = and i32 %187, 63
  %189 = call i32 @int_to_itoa64(i32 %188)
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 17
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %5, align 4
  %193 = ashr i32 %192, 6
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = and i32 %194, 63
  %196 = call i32 @int_to_itoa64(i32 %195)
  %197 = load i32*, i32** %4, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 18
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %5, align 4
  %200 = ashr i32 %199, 6
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  %202 = and i32 %201, 63
  %203 = call i32 @int_to_itoa64(i32 %202)
  %204 = load i32*, i32** %4, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 19
  store i32 %203, i32* %205, align 4
  %206 = load i32*, i32** %3, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 11
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 0
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = and i32 %210, 63
  %212 = call i32 @int_to_itoa64(i32 %211)
  %213 = load i32*, i32** %4, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 20
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %5, align 4
  %216 = ashr i32 %215, 6
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  %218 = and i32 %217, 63
  %219 = call i32 @int_to_itoa64(i32 %218)
  %220 = load i32*, i32** %4, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 21
  store i32 %219, i32* %221, align 4
  ret void
}

declare dso_local i32 @int_to_itoa64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
