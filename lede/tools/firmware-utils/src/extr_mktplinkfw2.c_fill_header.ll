; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktplinkfw2.c_fill_header.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktplinkfw2.c_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fw_header = type { i32, i32, i32, i64*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64*, i8* }

@hdr_ver = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@board = common dso_local global %struct.TYPE_8__* null, align 8
@boot_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@md5salt_normal = common dso_local global i32 0, align 4
@md5salt_boot = common dso_local global i32 0, align 4
@rootfs_ofs = common dso_local global i32 0, align 4
@rootfs_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@kernel_la = common dso_local global i32 0, align 4
@kernel_ep = common dso_local global i32 0, align 4
@layout = common dso_local global %struct.TYPE_6__* null, align 8
@kernel_len = common dso_local global i32 0, align 4
@combined = common dso_local global i32 0, align 4
@sver_hi = common dso_local global i32 0, align 4
@sver_lo = common dso_local global i32 0, align 4
@fw_ver_hi = common dso_local global i32 0, align 4
@fw_ver_mid = common dso_local global i32 0, align 4
@fw_ver_lo = common dso_local global i32 0, align 4
@FLAG_LE_KERNEL_LA_EP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_header(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_header*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.fw_header*
  store %struct.fw_header* %8, %struct.fw_header** %5, align 8
  %9 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %10 = call i32 @memset(%struct.fw_header* %9, float -1.000000e+00, i32 160)
  %11 = load i32, i32* @hdr_ver, align 4
  %12 = call i32 @bswap_32(i32 %11)
  %13 = call i8* @htonl(i32 %12)
  %14 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %15 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %14, i32 0, i32 23
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @version, align 4
  %17 = call i32 @strlen(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ugt i64 %19, 7
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 7, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %24 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %23, i32 0, i32 22
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* @version, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @memcpy(i64* %25, i32 %26, i32 %27)
  %29 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %30 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %29, i32 0, i32 22
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @board, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @htonl(i32 %37)
  %39 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %40 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %39, i32 0, i32 21
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @board, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @htonl(i32 %43)
  %45 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %46 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %45, i32 0, i32 20
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @board, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @htonl(i32 %49)
  %51 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %52 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %51, i32 0, i32 19
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @boot_info, i32 0, i32 0), align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %22
  %56 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %57 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* @md5salt_normal, align 4
  %60 = call i32 @memcpy(i64* %58, i32 %59, i32 8)
  %61 = call i8* @htonl(i32 0)
  %62 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %63 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  %64 = call i8* @htonl(i32 0)
  %65 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %66 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %65, i32 0, i32 12
  store i8* %64, i8** %66, align 8
  br label %83

67:                                               ; preds = %22
  %68 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %69 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %68, i32 0, i32 3
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* @md5salt_boot, align 4
  %72 = call i32 @memcpy(i64* %70, i32 %71, i32 8)
  %73 = load i32, i32* @rootfs_ofs, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %75 = add nsw i32 %73, %74
  %76 = call i8* @htonl(i32 %75)
  %77 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %78 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %77, i32 0, i32 13
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %80 = call i8* @htonl(i32 %79)
  %81 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %82 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %81, i32 0, i32 12
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %67, %55
  %84 = load i32, i32* @kernel_la, align 4
  %85 = call i8* @htonl(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %88 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @kernel_ep, align 4
  %90 = call i8* @htonl(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %93 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @layout, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @htonl(i32 %96)
  %98 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %99 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %98, i32 0, i32 18
  store i8* %97, i8** %99, align 8
  %100 = call i8* @htonl(i32 160)
  %101 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %102 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %101, i32 0, i32 17
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @kernel_len, align 4
  %104 = call i8* @htonl(i32 %103)
  %105 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %106 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %105, i32 0, i32 16
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @combined, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %83
  %110 = load i32, i32* @rootfs_ofs, align 4
  %111 = call i8* @htonl(i32 %110)
  %112 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %113 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %112, i32 0, i32 15
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %115 = call i8* @htonl(i32 %114)
  %116 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %117 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %116, i32 0, i32 14
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %109, %83
  %119 = call i8* @htonl(i32 0)
  %120 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %121 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %120, i32 0, i32 13
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @boot_info, i32 0, i32 0), align 4
  %123 = call i8* @htonl(i32 %122)
  %124 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %125 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %124, i32 0, i32 12
  store i8* %123, i8** %125, align 8
  %126 = call i8* @htonl(i32 0)
  %127 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %128 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %127, i32 0, i32 11
  store i8* %126, i8** %128, align 8
  %129 = call i8* @htonl(i32 -1)
  %130 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %131 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %130, i32 0, i32 10
  store i8* %129, i8** %131, align 8
  %132 = call i32 @htons(i32 21930)
  %133 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %134 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %133, i32 0, i32 9
  store i32 %132, i32* %134, align 4
  %135 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %136 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %135, i32 0, i32 2
  store i32 165, i32* %136, align 8
  %137 = load i32, i32* @sver_hi, align 4
  %138 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %139 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @sver_lo, align 4
  %141 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %142 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @fw_ver_hi, align 4
  %144 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %145 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @fw_ver_mid, align 4
  %147 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %148 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @fw_ver_lo, align 4
  %150 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %151 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** @board, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @FLAG_LE_KERNEL_LA_EP, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %118
  %159 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %160 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @bswap_32(i32 %161)
  %163 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %164 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %166 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @bswap_32(i32 %167)
  %169 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %170 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %158, %118
  %172 = load i8*, i8** %3, align 8
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %175 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %174, i32 0, i32 3
  %176 = load i64*, i64** %175, align 8
  %177 = call i32 @get_md5(i8* %172, i32 %173, i64* %176)
  ret void
}

declare dso_local i32 @memset(%struct.fw_header*, float, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @bswap_32(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @get_md5(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
