; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_copy_cache_entry_to_ondisk.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_copy_cache_entry_to_ondisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.ondisk_cache_entry = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.cache_entry = type { i16, %struct.TYPE_13__, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_14__* null, align 8
@CE_NAMEMASK = common dso_local global i16 0, align 2
@CE_EXTENDED = common dso_local global i32 0, align 4
@CE_EXTENDED_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ondisk_cache_entry*, %struct.cache_entry*)* @copy_cache_entry_to_ondisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_cache_entry_to_ondisk(%struct.ondisk_cache_entry* %0, %struct.cache_entry* %1) #0 {
  %3 = alloca %struct.ondisk_cache_entry*, align 8
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ondisk_cache_entry* %0, %struct.ondisk_cache_entry** %3, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** @the_hash_algo, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %12 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %7, align 8
  %18 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %19 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @htonl(i32 %22)
  %24 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %25 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @htonl(i32 %31)
  %33 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %34 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @htonl(i32 %40)
  %42 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %43 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @htonl(i32 %49)
  %51 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %52 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @htonl(i32 %57)
  %59 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %60 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %62 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @htonl(i32 %64)
  %66 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %67 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %69 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @htonl(i32 %70)
  %72 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %73 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %75 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @htonl(i32 %77)
  %79 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %80 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %82 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @htonl(i32 %84)
  %86 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %87 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %89 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @htonl(i32 %91)
  %93 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %94 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %3, align 8
  %96 = getelementptr inbounds %struct.ondisk_cache_entry, %struct.ondisk_cache_entry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %99 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @hashcpy(i64 %97, i32 %101)
  %103 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %104 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %103, i32 0, i32 0
  %105 = load i16, i16* %104, align 4
  %106 = sext i16 %105 to i32
  %107 = load i16, i16* @CE_NAMEMASK, align 2
  %108 = sext i16 %107 to i32
  %109 = xor i32 %108, -1
  %110 = and i32 %106, %109
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* %5, align 2
  %112 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %113 = call signext i16 @ce_namelen(%struct.cache_entry* %112)
  %114 = sext i16 %113 to i32
  %115 = load i16, i16* @CE_NAMEMASK, align 2
  %116 = sext i16 %115 to i32
  %117 = icmp sge i32 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %2
  %119 = load i16, i16* @CE_NAMEMASK, align 2
  %120 = sext i16 %119 to i32
  br label %125

121:                                              ; preds = %2
  %122 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %123 = call signext i16 @ce_namelen(%struct.cache_entry* %122)
  %124 = sext i16 %123 to i32
  br label %125

125:                                              ; preds = %121, %118
  %126 = phi i32 [ %120, %118 ], [ %124, %121 ]
  %127 = load i16, i16* %5, align 2
  %128 = sext i16 %127 to i32
  %129 = or i32 %128, %126
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %5, align 2
  %131 = load i16, i16* %5, align 2
  %132 = sext i16 %131 to i32
  %133 = call i32 @htons(i32 %132)
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %137 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %136, i32 0, i32 0
  %138 = load i16, i16* %137, align 4
  %139 = sext i16 %138 to i32
  %140 = load i32, i32* @CE_EXTENDED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %125
  %144 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %145 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %144, i32 0, i32 0
  %146 = load i16, i16* %145, align 4
  %147 = sext i16 %146 to i32
  %148 = load i32, i32* @CE_EXTENDED_FLAGS, align 4
  %149 = and i32 %147, %148
  %150 = ashr i32 %149, 16
  %151 = call i32 @htons(i32 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %143, %125
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @hashcpy(i64, i32) #1

declare dso_local signext i16 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
