; ModuleID = '/home/carl/AnghaBench/lede/package/network/ipv6/map/src/extr_mapcalc.c_handle_dump.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/ipv6/map/src/extr_mapcalc.c_handle_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubus_request = type { i32 }
%struct.blob_attr = type { i32 }

@DUMP_ATTR_INTERFACE = common dso_local global i32 0, align 4
@dump_attrs = common dso_local global i32 0, align 4
@DUMP_ATTR_MAX = common dso_local global i32 0, align 4
@dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubus_request*, i32, %struct.blob_attr*)* @handle_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_dump(%struct.ubus_request* %0, i32 %1, %struct.blob_attr* %2) #0 {
  %4 = alloca %struct.ubus_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blob_attr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ubus_request* %0, %struct.ubus_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.blob_attr* %2, %struct.blob_attr** %6, align 8
  %10 = load i32, i32* @DUMP_ATTR_INTERFACE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca %struct.blob_attr*, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @dump_attrs, align 4
  %15 = load i32, i32* @DUMP_ATTR_MAX, align 4
  %16 = load %struct.blob_attr*, %struct.blob_attr** %6, align 8
  %17 = call i32 @blob_data(%struct.blob_attr* %16)
  %18 = load %struct.blob_attr*, %struct.blob_attr** %6, align 8
  %19 = call i32 @blob_len(%struct.blob_attr* %18)
  %20 = call i32 @blobmsg_parse(i32 %14, i32 %15, %struct.blob_attr** %13, i32 %17, i32 %19)
  %21 = load i32, i32* @DUMP_ATTR_INTERFACE, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %13, i64 %22
  %24 = load %struct.blob_attr*, %struct.blob_attr** %23, align 8
  %25 = icmp ne %struct.blob_attr* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @DUMP_ATTR_INTERFACE, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.blob_attr*, %struct.blob_attr** %13, i64 %29
  %31 = load %struct.blob_attr*, %struct.blob_attr** %30, align 8
  %32 = call i32 @blob_memdup(%struct.blob_attr* %31)
  store i32 %32, i32* @dump, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %27, %26
  %34 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %37 [
    i32 0, label %36
    i32 1, label %36
  ]

36:                                               ; preds = %33, %33
  ret void

37:                                               ; preds = %33
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @blobmsg_parse(i32, i32, %struct.blob_attr**, i32, i32) #2

declare dso_local i32 @blob_data(%struct.blob_attr*) #2

declare dso_local i32 @blob_len(%struct.blob_attr*) #2

declare dso_local i32 @blob_memdup(%struct.blob_attr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
