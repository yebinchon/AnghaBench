; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_next_slow.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_next_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.skcipher_walk_buffer = type { i32, i32* }

@SKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*, i32)* @skcipher_next_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_next_slow(%struct.skcipher_walk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skcipher_walk_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %14 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %19 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %2
  %24 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %25 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %30 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %33 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %32, i32 0, i32 6
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %36 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %107

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %2
  %43 = call i32 (...) @crypto_tfm_ctx_alignment()
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = and i64 %50, 15
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = add i64 %54, 16
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %48, %42
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sub i32 %64, 1
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %65, %69
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %75 = call i32 @skcipher_walk_gfp(%struct.skcipher_walk* %74)
  %76 = call i8* @kzalloc(i32 %73, i32 %75)
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %57
  %80 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  %83 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %80, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %153

84:                                               ; preds = %57
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i8*, i8** %12, align 8
  %89 = bitcast i8* %88 to %struct.skcipher_walk_buffer*
  store %struct.skcipher_walk_buffer* %89, %struct.skcipher_walk_buffer** %8, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.skcipher_walk_buffer*, %struct.skcipher_walk_buffer** %8, align 8
  %92 = getelementptr inbounds %struct.skcipher_walk_buffer, %struct.skcipher_walk_buffer* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %94 = load %struct.skcipher_walk_buffer*, %struct.skcipher_walk_buffer** %8, align 8
  %95 = call i32 @skcipher_queue_write(%struct.skcipher_walk* %93, %struct.skcipher_walk_buffer* %94)
  %96 = load %struct.skcipher_walk_buffer*, %struct.skcipher_walk_buffer** %8, align 8
  %97 = getelementptr inbounds %struct.skcipher_walk_buffer, %struct.skcipher_walk_buffer* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %11, align 8
  br label %106

99:                                               ; preds = %84
  %100 = load i8*, i8** %12, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %103 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %102, i32 0, i32 6
  store i32* %101, i32** %103, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %11, align 8
  br label %106

106:                                              ; preds = %99, %87
  br label %107

107:                                              ; preds = %106, %40
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add i32 %109, 1
  %111 = call i32 @PTR_ALIGN(i32* %108, i32 %110)
  %112 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %113 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 4
  %116 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %117 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @skcipher_get_spot(i32 %120, i32 %121)
  %123 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %124 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 4
  %127 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %128 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %133 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  %136 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %137 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %142 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %141, i32 0, i32 3
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @scatterwalk_copychunks(i32 %140, i32* %142, i32 %143, i32 0)
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %147 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @SKCIPHER_WALK_SLOW, align 4
  %149 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %150 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %107, %79
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @skcipher_walk_gfp(%struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @skcipher_queue_write(%struct.skcipher_walk*, %struct.skcipher_walk_buffer*) #1

declare dso_local i32 @PTR_ALIGN(i32*, i32) #1

declare dso_local i32 @skcipher_get_spot(i32, i32) #1

declare dso_local i32 @scatterwalk_copychunks(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
