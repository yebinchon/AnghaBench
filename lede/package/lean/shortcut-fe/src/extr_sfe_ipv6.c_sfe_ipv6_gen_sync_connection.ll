; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_gen_sync_connection.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_gen_sync_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6 = type { i32 }
%struct.sfe_ipv6_connection = type { i8*, %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32 }
%struct.sfe_ipv6_connection_match = type { i32, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.sfe_connection_sync = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv6*, %struct.sfe_ipv6_connection*, %struct.sfe_connection_sync*, i32, i8*)* @sfe_ipv6_gen_sync_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv6_gen_sync_connection(%struct.sfe_ipv6* %0, %struct.sfe_ipv6_connection* %1, %struct.sfe_connection_sync* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.sfe_ipv6*, align 8
  %7 = alloca %struct.sfe_ipv6_connection*, align 8
  %8 = alloca %struct.sfe_connection_sync*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %12 = alloca %struct.sfe_ipv6_connection_match*, align 8
  store %struct.sfe_ipv6* %0, %struct.sfe_ipv6** %6, align 8
  store %struct.sfe_ipv6_connection* %1, %struct.sfe_ipv6_connection** %7, align 8
  store %struct.sfe_connection_sync* %2, %struct.sfe_connection_sync** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %14 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %16 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %19 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %18, i32 0, i32 27
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %21 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %20, i32 0, i32 10
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %26 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %25, i32 0, i32 26
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %24, i32* %29, align 4
  %30 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %31 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %30, i32 0, i32 9
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %36 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %35, i32 0, i32 25
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %34, i32* %39, align 4
  %40 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %41 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %46 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %45, i32 0, i32 24
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %44, i32* %49, align 4
  %50 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %51 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %56 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %55, i32 0, i32 23
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %54, i32* %59, align 4
  %60 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %61 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %64 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %63, i32 0, i32 22
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %66 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %69 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %68, i32 0, i32 21
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %71 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %74 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %73, i32 0, i32 20
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %76 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %79 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %78, i32 0, i32 19
  store i32 %77, i32* %79, align 4
  %80 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %81 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %80, i32 0, i32 2
  %82 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %81, align 8
  store %struct.sfe_ipv6_connection_match* %82, %struct.sfe_ipv6_connection_match** %11, align 8
  %83 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %84 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %83, i32 0, i32 1
  %85 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %84, align 8
  store %struct.sfe_ipv6_connection_match* %85, %struct.sfe_ipv6_connection_match** %12, align 8
  %86 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %11, align 8
  %87 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %92 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %91, i32 0, i32 18
  store i32 %90, i32* %92, align 8
  %93 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %11, align 8
  %94 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %99 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %98, i32 0, i32 17
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %11, align 8
  %101 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %106 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %105, i32 0, i32 16
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %12, align 8
  %108 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %113 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %112, i32 0, i32 15
  store i32 %111, i32* %113, align 4
  %114 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %12, align 8
  %115 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %120 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %119, i32 0, i32 14
  store i32 %118, i32* %120, align 8
  %121 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %12, align 8
  %122 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %127 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %126, i32 0, i32 13
  store i32 %125, i32* %127, align 4
  %128 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %11, align 8
  %129 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %132 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %131, i32 0, i32 12
  store i32 %130, i32* %132, align 8
  %133 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %11, align 8
  %134 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %137 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %136, i32 0, i32 11
  store i32 %135, i32* %137, align 4
  %138 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %12, align 8
  %139 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %142 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %141, i32 0, i32 10
  store i32 %140, i32* %142, align 8
  %143 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %12, align 8
  %144 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %147 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %146, i32 0, i32 9
  store i32 %145, i32* %147, align 4
  %148 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %11, align 8
  %149 = call i32 @sfe_ipv6_connection_match_update_summary_stats(%struct.sfe_ipv6_connection_match* %148)
  %150 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %12, align 8
  %151 = call i32 @sfe_ipv6_connection_match_update_summary_stats(%struct.sfe_ipv6_connection_match* %150)
  %152 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %11, align 8
  %153 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %156 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %155, i32 0, i32 8
  store i32 %154, i32* %156, align 8
  %157 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %11, align 8
  %158 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %161 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %160, i32 0, i32 7
  store i32 %159, i32* %161, align 4
  %162 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %11, align 8
  %163 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %166 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %12, align 8
  %168 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %171 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  %172 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %12, align 8
  %173 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %176 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 8
  %177 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %12, align 8
  %178 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %181 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %184 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %187 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = ptrtoint i8* %185 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = inttoptr i64 %191 to i8*
  %193 = load %struct.sfe_connection_sync*, %struct.sfe_connection_sync** %8, align 8
  %194 = getelementptr inbounds %struct.sfe_connection_sync, %struct.sfe_connection_sync* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** %10, align 8
  %196 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  %197 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  ret void
}

declare dso_local i32 @sfe_ipv6_connection_match_update_summary_stats(%struct.sfe_ipv6_connection_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
