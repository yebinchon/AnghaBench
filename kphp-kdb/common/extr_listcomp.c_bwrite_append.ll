; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_append.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitwriter*, i8)* @bwrite_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwrite_append(%struct.bitwriter* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.bitwriter*, align 8
  %4 = alloca i8, align 1
  store %struct.bitwriter* %0, %struct.bitwriter** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %6 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %6, align 8
  %9 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %10 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %13 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ult i8* %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8, i8* %4, align 1
  %19 = load %struct.bitwriter*, %struct.bitwriter** %3, align 8
  %20 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8 %18, i8* %21, align 1
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
