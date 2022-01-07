; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkwrgimg.c_get_digest.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkwrgimg.c_get_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrg_header = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wrg_header*, i8*, i32)* @get_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_digest(%struct.wrg_header* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wrg_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wrg_header* %0, %struct.wrg_header** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @MD5_Init(i32* %7)
  %9 = load %struct.wrg_header*, %struct.wrg_header** %4, align 8
  %10 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %9, i32 0, i32 2
  %11 = bitcast i32* %10 to i8*
  %12 = call i32 @MD5_Update(i32* %7, i8* %11, i32 4)
  %13 = load %struct.wrg_header*, %struct.wrg_header** %4, align 8
  %14 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %13, i32 0, i32 1
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @MD5_Update(i32* %7, i8* %15, i32 4)
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @MD5_Update(i32* %7, i8* %17, i32 %18)
  %20 = load %struct.wrg_header*, %struct.wrg_header** %4, align 8
  %21 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MD5_Final(i32 %22, i32* %7)
  ret void
}

declare dso_local i32 @MD5_Init(i32*) #1

declare dso_local i32 @MD5_Update(i32*, i8*, i32) #1

declare dso_local i32 @MD5_Final(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
