; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-pkt-line.c_unpack_sideband.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-pkt-line.c_unpack_sideband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i32, i32*, i32 }

@PACKET_READ_GENTLE_ON_EOF = common dso_local global i32 0, align 4
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unexpected side band %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unpack_sideband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_sideband() #0 {
  %1 = alloca %struct.packet_reader, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %5 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @packet_reader_init(%struct.packet_reader* %1, i32 0, i32* null, i32 0, i32 %6)
  br label %8

8:                                                ; preds = %42, %0
  %9 = call i64 @packet_reader_read(%struct.packet_reader* %1)
  %10 = icmp ne i64 %9, 130
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %42 [
    i32 130, label %14
    i32 128, label %15
    i32 129, label %40
    i32 131, label %41
  ]

14:                                               ; preds = %11
  br label %42

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %1, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %2, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %1, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = ptrtoint i32* %34 to i32
  %36 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %1, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @write_or_die(i32 %31, i32 %35, i32 %38)
  br label %42

40:                                               ; preds = %11
  br label %43

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %11, %41, %29, %14
  br label %8

43:                                               ; preds = %40, %8
  ret void
}

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32*, i32, i32) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @write_or_die(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
