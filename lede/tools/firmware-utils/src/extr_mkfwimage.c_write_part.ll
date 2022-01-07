; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkfwimage.c_write_part.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkfwimage.c_write_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i64, i8* }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed opening file '%s'\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed mmaping memory for file '%s'\0A\00", align 1
@MAGIC_PART = common dso_local global i32 0, align 4
@MAGIC_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_8__*)* @write_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_part(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr i8, i8* %12, i64 56
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %13, i64 %18
  %20 = bitcast i8* %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %9, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %3, align 4
  br label %135

33:                                               ; preds = %2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PROT_READ, align 4
  %39 = load i32, i32* @MAP_SHARED, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @mmap(i32 0, i32 %37, i32 %38, i32 %39, i32 %40, i32 0)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** @MAP_FAILED, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @close(i32 %50)
  store i32 -2, i32* %3, align 4
  br label %135

52:                                               ; preds = %33
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr i8, i8* %53, i64 56
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i8* %54, i8* %55, i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @munmap(i8* %61, i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memset(i32 %69, i32 0, i32 4)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MAGIC_PART, align 4
  %75 = load i32, i32* @MAGIC_LENGTH, align 4
  %76 = call i32 @strncpy(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strncpy(i32 %79, i32 %82, i32 4)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @htonl(i32 %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @htonl(i32 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @htonl(i32 %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @htonl(i32 %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @htonl(i32 %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @htonl(i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, 56
  %128 = trunc i64 %127 to i32
  %129 = call i32 @crc32(i64 0, i8* %121, i32 %128)
  %130 = call i8* @htonl(i32 %129)
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %52, %45, %28
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @ERROR(i8*, i32) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @crc32(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
