; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_send_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_pack_args = type { i64 }
%struct.strbuf = type { i32, i32 }

@LARGE_PACKET_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to write to remote\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_pack_args*, i32, %struct.strbuf*)* @send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_request(%struct.fetch_pack_args* %0, i32 %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.fetch_pack_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  store %struct.fetch_pack_args* %0, %struct.fetch_pack_args** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %7 = load %struct.fetch_pack_args*, %struct.fetch_pack_args** %4, align 8
  %8 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LARGE_PACKET_MAX, align 4
  %20 = call i32 @send_sideband(i32 %12, i32 -1, i32 %15, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @packet_flush(i32 %21)
  br label %37

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @write_in_full(i32 %24, i32 %27, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @die_errno(i32 %34)
  br label %36

36:                                               ; preds = %33, %23
  br label %37

37:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @send_sideband(i32, i32, i32, i32, i32) #1

declare dso_local i32 @packet_flush(i32) #1

declare dso_local i64 @write_in_full(i32, i32, i32) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
