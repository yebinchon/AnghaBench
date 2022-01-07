; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.h_drbd_req_make_private_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.h_drbd_req_make_private_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { %struct.bio* }
%struct.bio = type { i32*, i32, %struct.drbd_request* }

@GFP_NOIO = common dso_local global i32 0, align 4
@drbd_io_bio_set = common dso_local global i32 0, align 4
@drbd_request_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_request*, %struct.bio*)* @drbd_req_make_private_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_req_make_private_bio(%struct.drbd_request* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.drbd_request*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.drbd_request* %0, %struct.drbd_request** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %4, align 8
  %7 = load i32, i32* @GFP_NOIO, align 4
  %8 = call %struct.bio* @bio_clone_fast(%struct.bio* %6, i32 %7, i32* @drbd_io_bio_set)
  store %struct.bio* %8, %struct.bio** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %11 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %10, i32 0, i32 0
  store %struct.bio* %9, %struct.bio** %11, align 8
  %12 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 2
  store %struct.drbd_request* %12, %struct.drbd_request** %14, align 8
  %15 = load i32, i32* @drbd_request_endio, align 4
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
