; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/extr_elf2ecoff.c_convert_ecoff_filehdr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/extr_elf2ecoff.c_convert_ecoff_filehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filehdr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filehdr*)* @convert_ecoff_filehdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_ecoff_filehdr(%struct.filehdr* %0) #0 {
  %2 = alloca %struct.filehdr*, align 8
  store %struct.filehdr* %0, %struct.filehdr** %2, align 8
  %3 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %4 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %3, i32 0, i32 6
  %5 = load i8*, i8** %4, align 8
  %6 = call i8* @swab16(i8* %5)
  %7 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %8 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %7, i32 0, i32 6
  store i8* %6, i8** %8, align 8
  %9 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %10 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %9, i32 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @swab16(i8* %11)
  %13 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %14 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %16 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @swab32(i8* %17)
  %19 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %20 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %22 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @swab32(i8* %23)
  %25 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %26 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %28 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @swab32(i8* %29)
  %31 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %32 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %34 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @swab16(i8* %35)
  %37 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %38 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %40 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @swab16(i8* %41)
  %43 = load %struct.filehdr*, %struct.filehdr** %2, align 8
  %44 = getelementptr inbounds %struct.filehdr, %struct.filehdr* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  ret void
}

declare dso_local i8* @swab16(i8*) #1

declare dso_local i8* @swab32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
