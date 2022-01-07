; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-pkt-line.c_unpack.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-pkt-line.c_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i32, i8* }

@PACKET_READ_GENTLE_ON_EOF = common dso_local global i32 0, align 4
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0000\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0001\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack() #0 {
  %1 = alloca %struct.packet_reader, align 8
  %2 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %3 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @packet_reader_init(%struct.packet_reader* %1, i32 0, i32* null, i32 0, i32 %4)
  br label %6

6:                                                ; preds = %21, %0
  %7 = call i64 @packet_reader_read(%struct.packet_reader* %1)
  %8 = icmp ne i64 %7, 130
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %21 [
    i32 130, label %12
    i32 128, label %13
    i32 129, label %17
    i32 131, label %19
  ]

12:                                               ; preds = %9
  br label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %1, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %21

17:                                               ; preds = %9
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %21

19:                                               ; preds = %9
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %9, %19, %17, %13, %12
  br label %6

22:                                               ; preds = %6
  ret void
}

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32*, i32, i32) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
