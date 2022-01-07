; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_parse_git_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_parse_git_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.discovery = type { i32, i32, i32, i32 }
%struct.packet_reader = type { i32 }

@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_GENTLE_ON_EOF = common dso_local global i32 0, align 4
@PACKET_READ_DIE_ON_ERR_PACKET = common dso_local global i32 0, align 4
@REF_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown protocol version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (%struct.discovery*, i32)* @parse_git_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @parse_git_refs(%struct.discovery* %0, i32 %1) #0 {
  %3 = alloca %struct.discovery*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.packet_reader, align 4
  store %struct.discovery* %0, %struct.discovery** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ref* null, %struct.ref** %5, align 8
  %7 = load %struct.discovery*, %struct.discovery** %3, align 8
  %8 = getelementptr inbounds %struct.discovery, %struct.discovery* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.discovery*, %struct.discovery** %3, align 8
  %11 = getelementptr inbounds %struct.discovery, %struct.discovery* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %14 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PACKET_READ_DIE_ON_ERR_PACKET, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @packet_reader_init(%struct.packet_reader* %6, i32 -1, i32 %9, i32 %12, i32 %17)
  %19 = call i32 @discover_version(%struct.packet_reader* %6)
  %20 = load %struct.discovery*, %struct.discovery** %3, align 8
  %21 = getelementptr inbounds %struct.discovery, %struct.discovery* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.discovery*, %struct.discovery** %3, align 8
  %23 = getelementptr inbounds %struct.discovery, %struct.discovery* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %39 [
    i32 128, label %25
    i32 129, label %26
    i32 130, label %26
    i32 131, label %37
  ]

25:                                               ; preds = %2
  br label %39

26:                                               ; preds = %2, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @REF_NORMAL, align 4
  br label %32

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load %struct.discovery*, %struct.discovery** %3, align 8
  %35 = getelementptr inbounds %struct.discovery, %struct.discovery* %34, i32 0, i32 0
  %36 = call i32 @get_remote_heads(%struct.packet_reader* %6, %struct.ref** %5, i32 %33, i32* null, i32* %35)
  br label %39

37:                                               ; preds = %2
  %38 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %2, %32, %25
  %40 = load %struct.ref*, %struct.ref** %5, align 8
  ret %struct.ref* %40
}

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32, i32, i32) #1

declare dso_local i32 @discover_version(%struct.packet_reader*) #1

declare dso_local i32 @get_remote_heads(%struct.packet_reader*, %struct.ref**, i32, i32*, i32*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
