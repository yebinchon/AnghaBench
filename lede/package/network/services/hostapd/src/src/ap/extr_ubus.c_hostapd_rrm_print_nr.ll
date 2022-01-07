; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_rrm_print_nr.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/hostapd/src/src/ap/extr_ubus.c_hostapd_rrm_print_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_neighbor_entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@b = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MACSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_neighbor_entry*)* @hostapd_rrm_print_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_rrm_print_nr(%struct.hostapd_neighbor_entry* %0) #0 {
  %2 = alloca %struct.hostapd_neighbor_entry*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.hostapd_neighbor_entry* %0, %struct.hostapd_neighbor_entry** %2, align 8
  %6 = load i32, i32* @MACSTR, align 4
  %7 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %2, align 8
  %8 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @MAC2STR(i32 %9)
  %11 = call i32 @blobmsg_printf(i32* @b, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %10)
  %12 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %2, align 8
  %13 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i8* @blobmsg_alloc_string_buffer(i32* @b, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %2, align 8
  %20 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %2, align 8
  %24 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i8* %18, i32 %22, i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %2, align 8
  %30 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  store i8 0, i8* %34, align 1
  %35 = call i32 @blobmsg_add_string_buffer(i32* @b)
  %36 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %2, align 8
  %37 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wpabuf_len(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 2, %40
  %42 = add nsw i32 %41, 1
  %43 = call i8* @blobmsg_alloc_string_buffer(i32* @b, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 2, %45
  %47 = add nsw i32 %46, 1
  %48 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %2, align 8
  %49 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wpabuf_head_u8(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @wpa_snprintf_hex(i8* %44, i32 %47, i32 %51, i32 %52)
  %54 = call i32 @blobmsg_add_string_buffer(i32* @b)
  ret void
}

declare dso_local i32 @blobmsg_printf(i32*, i8*, i32, i32) #1

declare dso_local i32 @MAC2STR(i32) #1

declare dso_local i8* @blobmsg_alloc_string_buffer(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @blobmsg_add_string_buffer(i32*) #1

declare dso_local i32 @wpabuf_len(i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head_u8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
