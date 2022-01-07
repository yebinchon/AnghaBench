; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_sha1_final_hmac.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_sha1_final_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }

@HASH_LENGTH = common dso_local global i64 0, align 8
@BLOCK_LENGTH = common dso_local global i64 0, align 8
@HMAC_OPAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @sha1_final_hmac(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = call i64* @sha1_final(%struct.TYPE_6__* %7)
  %9 = load i64, i64* @HASH_LENGTH, align 8
  %10 = call i32 @memcpy(i32* %6, i64* %8, i64 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = call i32 @sha1_init(%struct.TYPE_6__* %11)
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @BLOCK_LENGTH, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HMAC_OPAD, align 4
  %26 = xor i32 %24, %25
  %27 = call i32 @sha1_write1(%struct.TYPE_6__* %18, i32 %26)
  br label %28

28:                                               ; preds = %17
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %13

31:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @HASH_LENGTH, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sha1_write1(%struct.TYPE_6__* %37, i32 %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %32

48:                                               ; preds = %32
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = call i64* @sha1_final(%struct.TYPE_6__* %49)
  ret i64* %50
}

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

declare dso_local i64* @sha1_final(%struct.TYPE_6__*) #1

declare dso_local i32 @sha1_init(%struct.TYPE_6__*) #1

declare dso_local i32 @sha1_write1(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
