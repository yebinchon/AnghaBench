; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_list_decoder_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_list_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32, i32, i32, i32*, i32, i32 }

@degenerate_decode_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_decoder*, i32, i32, i8*, i32, i32)* @list_decoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_decoder_init(%struct.list_decoder* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.list_decoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.list_decoder* %0, %struct.list_decoder** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %14 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %13, i32 0, i32 5
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @bread_init(i32* %14, i8* %15, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %20 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %23 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %26 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %58 [
    i32 132, label %28
    i32 131, label %31
    i32 130, label %34
    i32 129, label %36
    i32 133, label %50
    i32 128, label %55
  ]

28:                                               ; preds = %6
  %29 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %30 = call i32 @golomb_decoder_init(%struct.list_decoder* %29)
  br label %60

31:                                               ; preds = %6
  %32 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %33 = call i32 @interpolative_decoder_init(%struct.list_decoder* %32)
  br label %60

34:                                               ; preds = %6
  %35 = call i32 @assert(i32 0)
  br label %60

36:                                               ; preds = %6
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @list_too_short_for_llrun(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %43 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %42, i32 0, i32 2
  store i32 132, i32* %43, align 8
  %44 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %45 = call i32 @golomb_decoder_init(%struct.list_decoder* %44)
  br label %49

46:                                               ; preds = %36
  %47 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %48 = call i32 @llrun_decoder_init(%struct.list_decoder* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %60

50:                                               ; preds = %6
  %51 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %52 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %51, i32 0, i32 4
  store i32 0, i32* %52, align 8
  %53 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %54 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %53, i32 0, i32 3
  store i32* @degenerate_decode_int, i32** %54, align 8
  br label %60

55:                                               ; preds = %6
  %56 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  %57 = call i32 @raw_int32_decoder_init(%struct.list_decoder* %56)
  br label %60

58:                                               ; preds = %6
  %59 = call i32 @assert(i32 0)
  br label %60

60:                                               ; preds = %58, %55, %50, %49, %34, %31, %28
  ret void
}

declare dso_local i32 @bread_init(i32*, i8*, i32) #1

declare dso_local i32 @golomb_decoder_init(%struct.list_decoder*) #1

declare dso_local i32 @interpolative_decoder_init(%struct.list_decoder*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @list_too_short_for_llrun(i32, i32) #1

declare dso_local i32 @llrun_decoder_init(%struct.list_decoder*) #1

declare dso_local i32 @raw_int32_decoder_init(%struct.list_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
