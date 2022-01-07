; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktplinkfw.c_fill_header.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktplinkfw.c_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.fw_header = type { i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }

@hdr_ver = common dso_local global i32 0, align 4
@vendor = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@hw_id = common dso_local global i32 0, align 4
@hw_rev = common dso_local global i32 0, align 4
@kernel_la = common dso_local global i32 0, align 4
@kernel_ep = common dso_local global i32 0, align 4
@kernel_len = common dso_local global i32 0, align 4
@combined = common dso_local global i64 0, align 8
@boot_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@md5salt_normal = common dso_local global i32 0, align 4
@md5salt_boot = common dso_local global i32 0, align 4
@layout = common dso_local global %struct.TYPE_7__* null, align 8
@rootfs_ofs = common dso_local global i32 0, align 4
@rootfs_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@rootfs_ofs_calc = common dso_local global i64 0, align 8
@fw_ver_hi = common dso_local global i32 0, align 4
@fw_ver_mid = common dso_local global i32 0, align 4
@fw_ver_lo = common dso_local global i32 0, align 4
@region = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"00000000;%02X%02X%02X%02X;\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%02X%02X%02X%02X\00", align 1
@endian_swap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_header(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_header*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.fw_header*
  store %struct.fw_header* %7, %struct.fw_header** %5, align 8
  %8 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %9 = call i32 @memset(%struct.fw_header* %8, i32 0, i32 136)
  %10 = load i32, i32* @hdr_ver, align 4
  %11 = call i8* @htonl(i32 %10)
  %12 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %13 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %12, i32 0, i32 18
  store i8* %11, i8** %13, align 8
  %14 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %15 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %14, i32 0, i32 17
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @vendor, align 4
  %18 = call i32 @strncpy(i32 %16, i32 %17, i32 4)
  %19 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %20 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %19, i32 0, i32 16
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @version, align 4
  %23 = call i32 @strncpy(i32 %21, i32 %22, i32 4)
  %24 = load i32, i32* @hw_id, align 4
  %25 = call i8* @htonl(i32 %24)
  %26 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %27 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %26, i32 0, i32 15
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @hw_rev, align 4
  %29 = call i8* @htonl(i32 %28)
  %30 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %31 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %30, i32 0, i32 14
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @kernel_la, align 4
  %33 = call i8* @htonl(i32 %32)
  %34 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %35 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @kernel_ep, align 4
  %37 = call i8* @htonl(i32 %36)
  %38 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %39 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = call i8* @htonl(i32 136)
  %41 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %42 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %41, i32 0, i32 13
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @kernel_len, align 4
  %44 = call i8* @htonl(i32 %43)
  %45 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %46 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %45, i32 0, i32 12
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* @combined, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %2
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @boot_info, i32 0, i32 0), align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %54 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @md5salt_normal, align 4
  %57 = call i32 @memcpy(i32 %55, i32 %56, i32 4)
  br label %64

58:                                               ; preds = %49
  %59 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %60 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @md5salt_boot, align 4
  %63 = call i32 @memcpy(i32 %61, i32 %62, i32 4)
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** @layout, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @htonl(i32 %67)
  %69 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %70 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %69, i32 0, i32 11
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @rootfs_ofs, align 4
  %72 = call i8* @htonl(i32 %71)
  %73 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %74 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %73, i32 0, i32 9
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %76 = call i8* @htonl(i32 %75)
  %77 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %78 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %77, i32 0, i32 10
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %64, %2
  %80 = load i64, i64* @combined, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i64, i64* @rootfs_ofs_calc, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* @kernel_len, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 136, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @htonl(i32 %89)
  %91 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %92 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %91, i32 0, i32 9
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %85, %82, %79
  %94 = load i32, i32* @fw_ver_hi, align 4
  %95 = call i8* @htons(i32 %94)
  %96 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %97 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %96, i32 0, i32 8
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @fw_ver_mid, align 4
  %99 = call i8* @htons(i32 %98)
  %100 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %101 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @fw_ver_lo, align 4
  %103 = call i8* @htons(i32 %102)
  %104 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %105 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %107 = icmp ne %struct.TYPE_6__* %106, null
  br i1 %107, label %108, label %163

108:                                              ; preds = %93
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @htonl(i32 %111)
  %113 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %114 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  %115 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %116 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @snprintf(i32 %117, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %127, i32 %132, i32 %137)
  %139 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %140 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @region, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @snprintf(i32 %141, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %151, i32 %156, i32 %161)
  br label %163

163:                                              ; preds = %108, %93
  %164 = load i64, i64* @endian_swap, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %168 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @bswap_32(i8* %169)
  %171 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %172 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %171, i32 0, i32 2
  store i8* %170, i8** %172, align 8
  %173 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %174 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i8* @bswap_32(i8* %175)
  %177 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %178 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %166, %163
  %180 = load i64, i64* @combined, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = load i8*, i8** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.fw_header*, %struct.fw_header** %5, align 8
  %186 = getelementptr inbounds %struct.fw_header, %struct.fw_header* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @get_md5(i8* %183, i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %182, %179
  ret void
}

declare dso_local i32 @memset(%struct.fw_header*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @bswap_32(i8*) #1

declare dso_local i32 @get_md5(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
