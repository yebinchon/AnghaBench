; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_read_pack_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_read_pack_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_header = type { i64, i32 }

@PH_ERROR_EOF = common dso_local global i32 0, align 4
@PACK_SIGNATURE = common dso_local global i32 0, align 4
@PH_ERROR_PACK_SIGNATURE = common dso_local global i32 0, align 4
@PH_ERROR_PROTOCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_pack_header(i32 %0, %struct.pack_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pack_header*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pack_header* %1, %struct.pack_header** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.pack_header*, %struct.pack_header** %5, align 8
  %8 = call i32 @read_in_full(i32 %6, %struct.pack_header* %7, i32 16)
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 %9, 16
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @PH_ERROR_EOF, align 4
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.pack_header*, %struct.pack_header** %5, align 8
  %15 = getelementptr inbounds %struct.pack_header, %struct.pack_header* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @PACK_SIGNATURE, align 4
  %18 = call i64 @htonl(i32 %17)
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @PH_ERROR_PACK_SIGNATURE, align 4
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %13
  %23 = load %struct.pack_header*, %struct.pack_header** %5, align 8
  %24 = getelementptr inbounds %struct.pack_header, %struct.pack_header* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pack_version_ok(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @PH_ERROR_PROTOCOL, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28, %20, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @read_in_full(i32, %struct.pack_header*, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @pack_version_ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
