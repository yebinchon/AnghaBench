; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_list_encoder_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_list_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_encoder = type { i32, i32, i32, i32*, i64, i32 }

@le_degenerate = common dso_local global i32 0, align 4
@degenerate_encode_int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_encoder_init(%struct.list_encoder* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.list_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.list_encoder* %0, %struct.list_encoder** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %16 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %15, i32 0, i32 5
  %17 = load i8*, i8** %11, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @bwrite_init(i32* %16, i8* %17, i8* %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %23 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %26 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %7
  %31 = load i32, i32* @le_degenerate, align 4
  %32 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %33 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %35 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %37 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %36, i32 0, i32 3
  store i32* @degenerate_encode_int, i32** %37, align 8
  br label %65

38:                                               ; preds = %7
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %41 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %13, align 4
  switch i32 %42, label %63 [
    i32 130, label %43
    i32 129, label %46
    i32 128, label %49
  ]

43:                                               ; preds = %38
  %44 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %45 = call i32 @golomb_encoder_init(%struct.list_encoder* %44)
  br label %65

46:                                               ; preds = %38
  %47 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %48 = call i32 @interpolative_encoder_init(%struct.list_encoder* %47)
  br label %65

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @list_too_short_for_llrun(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %56 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %55, i32 0, i32 2
  store i32 130, i32* %56, align 8
  %57 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %58 = call i32 @golomb_encoder_init(%struct.list_encoder* %57)
  br label %62

59:                                               ; preds = %49
  %60 = load %struct.list_encoder*, %struct.list_encoder** %8, align 8
  %61 = call i32 @llrun_encoder_init(%struct.list_encoder* %60)
  br label %62

62:                                               ; preds = %59, %54
  br label %65

63:                                               ; preds = %38
  %64 = call i32 @assert(i32 0)
  br label %65

65:                                               ; preds = %30, %43, %46, %62, %63
  ret void
}

declare dso_local i32 @bwrite_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @golomb_encoder_init(%struct.list_encoder*) #1

declare dso_local i32 @interpolative_encoder_init(%struct.list_encoder*) #1

declare dso_local i32 @list_too_short_for_llrun(i32, i32) #1

declare dso_local i32 @llrun_encoder_init(%struct.list_encoder*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
