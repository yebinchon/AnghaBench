; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_consume_shallow_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_consume_shallow_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_pack_args = type { i64, i64 }
%struct.packet_reader = type { i64, i32 }

@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"shallow \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"unshallow \00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"git fetch-pack: expected shallow list\00", align 1
@PACKET_READ_FLUSH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"git fetch-pack: expected a flush packet after shallow list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_pack_args*, %struct.packet_reader*)* @consume_shallow_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consume_shallow_list(%struct.fetch_pack_args* %0, %struct.packet_reader* %1) #0 {
  %3 = alloca %struct.fetch_pack_args*, align 8
  %4 = alloca %struct.packet_reader*, align 8
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %3, align 8
  store %struct.packet_reader* %1, %struct.packet_reader** %4, align 8
  %5 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %3, align 8
  %6 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %2
  %10 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %3, align 8
  %11 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %34, %33, %26, %14
  %16 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %17 = call i64 @packet_reader_read(%struct.packet_reader* %16)
  %18 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %22 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @starts_with(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %15

27:                                               ; preds = %20
  %28 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %29 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @starts_with(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %15

34:                                               ; preds = %27
  %35 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @die(i32 %35)
  br label %15

37:                                               ; preds = %15
  %38 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %39 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 @die(i32 %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %9, %2
  ret void
}

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i64 @starts_with(i32, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
