; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_next_slow.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_next_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.ablkcipher_walk = type { i32, i32, i32 }
%struct.ablkcipher_buffer = type { i32, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ABLKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, %struct.ablkcipher_walk*, i32, i32, i8**, i8**)* @ablkcipher_next_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablkcipher_next_slow(%struct.ablkcipher_request* %0, %struct.ablkcipher_walk* %1, i32 %2, i32 %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ablkcipher_request*, align 8
  %9 = alloca %struct.ablkcipher_walk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ablkcipher_buffer*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %8, align 8
  store %struct.ablkcipher_walk* %1, %struct.ablkcipher_walk** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* %11, align 4
  %23 = add i32 %22, 1
  %24 = call i32 @ALIGN(i64 %21, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add i32 %25, 1
  %27 = call i32 @ALIGN(i64 16, i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %14, align 4
  %29 = mul i32 %28, 3
  %30 = load i32, i32* %11, align 4
  %31 = add i32 %30, 1
  %32 = sub i32 %29, %31
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (...) @crypto_tfm_ctx_alignment()
  %35 = sub nsw i32 %34, 1
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = add i32 %32, %37
  %39 = load i32, i32* %19, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.ablkcipher_buffer* @kmalloc(i32 %41, i32 %42)
  store %struct.ablkcipher_buffer* %43, %struct.ablkcipher_buffer** %15, align 8
  %44 = load %struct.ablkcipher_buffer*, %struct.ablkcipher_buffer** %15, align 8
  %45 = icmp ne %struct.ablkcipher_buffer* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %6
  %47 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %8, align 8
  %48 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %9, align 8
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @ablkcipher_walk_done(%struct.ablkcipher_request* %47, %struct.ablkcipher_walk* %48, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %93

52:                                               ; preds = %6
  %53 = load %struct.ablkcipher_buffer*, %struct.ablkcipher_buffer** %15, align 8
  %54 = getelementptr inbounds %struct.ablkcipher_buffer, %struct.ablkcipher_buffer* %53, i64 1
  %55 = bitcast %struct.ablkcipher_buffer* %54 to i8*
  store i8* %55, i8** %18, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  %60 = call i32 @ALIGN(i64 %57, i32 %59)
  %61 = zext i32 %60 to i64
  %62 = inttoptr i64 %61 to i32*
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %17, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i8* @ablkcipher_get_spot(i8* %64, i32 %65)
  store i8* %66, i8** %17, align 8
  store i8* %66, i8** %16, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.ablkcipher_buffer*, %struct.ablkcipher_buffer** %15, align 8
  %69 = getelementptr inbounds %struct.ablkcipher_buffer, %struct.ablkcipher_buffer* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = load %struct.ablkcipher_buffer*, %struct.ablkcipher_buffer** %15, align 8
  %72 = getelementptr inbounds %struct.ablkcipher_buffer, %struct.ablkcipher_buffer* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %9, align 8
  %75 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %74, i32 0, i32 2
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @scatterwalk_copychunks(i8* %73, i32* %75, i32 %76, i32 0)
  %78 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %9, align 8
  %79 = load %struct.ablkcipher_buffer*, %struct.ablkcipher_buffer** %15, align 8
  %80 = call i32 @ablkcipher_queue_write(%struct.ablkcipher_walk* %78, %struct.ablkcipher_buffer* %79)
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %9, align 8
  %83 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ABLKCIPHER_WALK_SLOW, align 4
  %85 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %9, align 8
  %86 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i8*, i8** %16, align 8
  %90 = load i8**, i8*** %12, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load i8**, i8*** %13, align 8
  store i8* %91, i8** %92, align 8
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %52, %46
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local %struct.ablkcipher_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @ablkcipher_walk_done(%struct.ablkcipher_request*, %struct.ablkcipher_walk*, i32) #1

declare dso_local i8* @ablkcipher_get_spot(i8*, i32) #1

declare dso_local i32 @scatterwalk_copychunks(i8*, i32*, i32, i32) #1

declare dso_local i32 @ablkcipher_queue_write(%struct.ablkcipher_walk*, %struct.ablkcipher_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
