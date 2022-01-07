; ModuleID = '/home/carl/AnghaBench/kphp-kdb/random/extr_random-data.c_bbs_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/random/extr_random-data.c_bbs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32*, i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"PRNG initialized.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"p was generated.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"gcd ((p-1)/2, (q-1)/2) isn't 1.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bbs_init(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %208

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = call i32 (...) @BN_CTX_new()
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @assert(i32 %29)
  %31 = call i8* (...) @BN_new()
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @BN_set_word(i32* %36, i32 3)
  %38 = icmp eq i32 1, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = call i8* (...) @BN_new()
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @BN_set_word(i32* %46, i32 4)
  %48 = icmp eq i32 1, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @prng_seed(i8* %51, i32 %52)
  %54 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i8* (...) @BN_new()
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  br label %61

61:                                               ; preds = %20, %120
  %62 = call i8* (...) @BN_new()
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %15, align 8
  %64 = call i8* (...) @BN_new()
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %16, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32*, i32** %16, align 8
  %70 = icmp ne i32* %69, null
  br label %71

71:                                               ; preds = %68, %61
  %72 = phi i1 [ false, %61 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = sdiv i32 %75, 2
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32* @BN_generate_prime(i32* null, i32 %76, i32 0, i32* %77, i32* %78, i32* null, i32* null)
  store i32* %79, i32** %13, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = ptrtoint i32* %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 (...) @BN_value_one()
  %86 = call i32 @BN_sub(i32* %83, i32* %84, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = sdiv i32 %87, 2
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32* @BN_generate_prime(i32* null, i32 %88, i32 0, i32* %89, i32* %90, i32* null, i32* null)
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = ptrtoint i32* %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32*, i32** %16, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 (...) @BN_value_one()
  %98 = call i32 @BN_sub(i32* %95, i32* %96, i32 %97)
  %99 = load i32*, i32** %15, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @BN_rshift1(i32* %99, i32* %100)
  %102 = load i32*, i32** %16, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = call i32 @BN_rshift1(i32* %102, i32* %103)
  %105 = load i32*, i32** %12, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @BN_gcd(i32* %105, i32* %106, i32* %107, i32 %110)
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @BN_free(i32* %112)
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @BN_free(i32* %114)
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @BN_is_one(i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %71
  br label %126

120:                                              ; preds = %71
  %121 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @BN_free(i32* %122)
  store i32* null, i32** %13, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = call i32 @BN_free(i32* %124)
  store i32* null, i32** %14, align 8
  br label %61

126:                                              ; preds = %119
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @BN_free(i32* %127)
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @BN_free(i32* %129)
  %131 = call i8* (...) @BN_new()
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  store i32* %132, i32** %134, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @BN_mul(i32* %137, i32* %138, i32* %139, i32 %142)
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 @BN_clear_free(i32* %144)
  %146 = load i32*, i32** %14, align 8
  %147 = call i32 @BN_clear_free(i32* %146)
  %148 = call i32 (...) @BN_RECP_CTX_new()
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @BN_RECP_CTX_set(i32 %153, i32* %156, i32 %159)
  %161 = icmp eq i32 1, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @BN_num_bytes(i32* %166)
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 3
  %174 = and i32 %173, -4
  %175 = call i32 @calloc(i32 %174, i32 1)
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @assert(i32 %180)
  %182 = call i8* (...) @BN_new()
  %183 = bitcast i8* %182 to i32*
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 6
  store i32* %183, i32** %185, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @BN_set_word(i32* %188, i32 239)
  %190 = load i32*, i32** %12, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 6
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @BN_gcd(i32* %190, i32* %193, i32* %196, i32 %199)
  %201 = load i32*, i32** %12, align 8
  %202 = call i32 @BN_is_one(i32* %201)
  %203 = call i32 @assert(i32 %202)
  %204 = load i32*, i32** %12, align 8
  %205 = call i32 @BN_free(i32* %204)
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  store i64 0, i64* %207, align 8
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %126, %19
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @BN_CTX_new(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @prng_seed(i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32* @BN_generate_prime(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @BN_gcd(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_is_one(i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_RECP_CTX_new(...) #1

declare dso_local i32 @BN_RECP_CTX_set(i32, i32*, i32) #1

declare dso_local i32 @BN_num_bytes(i32*) #1

declare dso_local i32 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
