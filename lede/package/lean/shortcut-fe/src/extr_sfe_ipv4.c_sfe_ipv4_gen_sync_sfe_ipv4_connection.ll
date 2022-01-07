; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_gen_sync_sfe_ipv4_connection.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_gen_sync_sfe_ipv4_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i32 }
%struct.sfe_ipv4_connection = type { i8*, %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sfe_ipv4_connection_match = type { i32, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.sfe_connection_sync = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv4*, %struct.sfe_ipv4_connection*, %struct.sfe_connection_sync*, i32, i8*)* @sfe_ipv4_gen_sync_sfe_ipv4_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv4_gen_sync_sfe_ipv4_connection(%struct.sfe_ipv4* %0, %struct.sfe_ipv4_connection* %1, %struct.sfe_connection_sync* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.sfe_ipv4*, align 8
  %7 = alloca %struct.sfe_ipv4_connection*, align 8
  %8 = alloca %struct.sfe_connection_sync*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sfe_ipv4_connection_match*, align 8
  %12 = alloca %struct.sfe_ipv4_connection_match*, align 8
  store %struct.sfe_ipv4* %0, %struct.sfe_ipv4** %6, align 8
  store %struct.sfe_ipv4_connection* %1, %struct.sfe_ipv4_connection** %7, align 8
  store %struct.sfe_connection_sync* %2, %struct.sfe_connection_sync** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %14 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %13, i32 0, i32 27
  store i64 0, i64* %14, align 8
  %15 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %16 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %19 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %18, i32 0, i32 26
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %21 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %24 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %23, i32 0, i32 25
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %27 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %30 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %29, i32 0, i32 24
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %33 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %36 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %35, i32 0, i32 23
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %39 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %42 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %41, i32 0, i32 22
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %45 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %48 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %47, i32 0, i32 21
  store i32 %46, i32* %48, align 8
  %49 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %50 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %53 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %52, i32 0, i32 20
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %55 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %58 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %57, i32 0, i32 19
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %60 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %63 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %62, i32 0, i32 18
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %65 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %64, i32 0, i32 2
  %66 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %65, align 8
  store %struct.sfe_ipv4_connection_match* %66, %struct.sfe_ipv4_connection_match** %11, align 8
  %67 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %68 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %67, i32 0, i32 1
  %69 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %68, align 8
  store %struct.sfe_ipv4_connection_match* %69, %struct.sfe_ipv4_connection_match** %12, align 8
  %70 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %11, align 8
  %71 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %76 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %75, i32 0, i32 17
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %11, align 8
  %78 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %83 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %82, i32 0, i32 16
  store i32 %81, i32* %83, align 4
  %84 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %11, align 8
  %85 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %90 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %89, i32 0, i32 15
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %12, align 8
  %92 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %97 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %96, i32 0, i32 14
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %12, align 8
  %99 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %104 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %103, i32 0, i32 13
  store i32 %102, i32* %104, align 8
  %105 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %12, align 8
  %106 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %111 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %110, i32 0, i32 12
  store i32 %109, i32* %111, align 4
  %112 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %11, align 8
  %113 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %116 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %115, i32 0, i32 11
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %11, align 8
  %118 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %121 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %12, align 8
  %123 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %126 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %125, i32 0, i32 9
  store i32 %124, i32* %126, align 8
  %127 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %12, align 8
  %128 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %131 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 4
  %132 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %11, align 8
  %133 = call i32 @sfe_ipv4_connection_match_update_summary_stats(%struct.sfe_ipv4_connection_match* %132)
  %134 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %12, align 8
  %135 = call i32 @sfe_ipv4_connection_match_update_summary_stats(%struct.sfe_ipv4_connection_match* %134)
  %136 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %11, align 8
  %137 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %140 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  %141 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %11, align 8
  %142 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %145 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 4
  %146 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %11, align 8
  %147 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %150 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %12, align 8
  %152 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %155 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  %156 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %12, align 8
  %157 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %160 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %12, align 8
  %162 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %165 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %168 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %171 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = ptrtoint i8* %169 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = inttoptr i64 %175 to i8*
  %177 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %178 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  %181 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  ret void
}

declare dso_local i32 @sfe_ipv4_connection_match_update_summary_stats(%struct.sfe_ipv4_connection_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
