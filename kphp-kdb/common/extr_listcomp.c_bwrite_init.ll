; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_bwrite_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitwriter = type { i32, i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwrite_init(%struct.bitwriter* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.bitwriter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.bitwriter* %0, %struct.bitwriter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %11 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %14 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %17 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = lshr i32 %19, 3
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %24 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %26 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %29 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ult i8* %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 7
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 128, %36
  %38 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %39 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = lshr i32 -256, %40
  %42 = load %struct.bitwriter*, %struct.bitwriter** %5, align 8
  %43 = getelementptr inbounds %struct.bitwriter, %struct.bitwriter* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, %41
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
