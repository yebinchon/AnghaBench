; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_interpolative_encoder_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_interpolative_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_encoder = type { i32*, i32, i32, i32, i32* }

@store_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_encoder*)* @interpolative_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpolative_encoder_init(%struct.list_encoder* %0) #0 {
  %2 = alloca %struct.list_encoder*, align 8
  store %struct.list_encoder* %0, %struct.list_encoder** %2, align 8
  %3 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %4 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, 2
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = call i32* @malloc(i32 %9)
  %11 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 -1, i32* %16, align 4
  %17 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %18 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %21 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %24 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  store i32 %19, i32* %28, align 4
  %29 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %30 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %29, i32 0, i32 3
  store i32 1, i32* %30, align 8
  %31 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %32 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %31, i32 0, i32 4
  store i32* @store_int, i32** %32, align 8
  ret void
}

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
