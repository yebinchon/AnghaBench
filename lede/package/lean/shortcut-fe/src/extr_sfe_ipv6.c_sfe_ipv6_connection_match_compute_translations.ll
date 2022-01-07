; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_connection_match_compute_translations.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_connection_match_compute_translations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6_connection_match = type { i32, i8*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__*, i8*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@SFE_IPV6_CONNECTION_MATCH_FLAG_XLATE_SRC = common dso_local global i32 0, align 4
@SFE_IPV6_CONNECTION_MATCH_FLAG_XLATE_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv6_connection_match*)* @sfe_ipv6_connection_match_compute_translations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv6_connection_match_compute_translations(%struct.sfe_ipv6_connection_match* %0) #0 {
  %2 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %3 = alloca [9 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sfe_ipv6_connection_match* %0, %struct.sfe_ipv6_connection_match** %2, align 8
  %12 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %13 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SFE_IPV6_CONNECTION_MATCH_FLAG_XLATE_SRC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %156

18:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  store i32* %19, i32** %4, align 8
  %20 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %21 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %20, i32 0, i32 10
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  %29 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %30 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %29, i32 0, i32 10
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  %38 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %39 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %38, i32 0, i32 10
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %47 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %48 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %47, i32 0, i32 10
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = bitcast i32* %56 to i8**
  store i8** %57, i8*** %5, align 8
  %58 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %59 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %5, align 8
  store i8* %62, i8** %63, align 8
  %65 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %66 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = xor i32 %67, -1
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %5, align 8
  store i8* %70, i8** %71, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = bitcast i8** %73 to i32*
  store i32* %74, i32** %4, align 8
  %75 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %76 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %75, i32 0, i32 7
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %4, align 8
  store i32 %82, i32* %83, align 4
  %85 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %86 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %85, i32 0, i32 7
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, -1
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %4, align 8
  store i32 %92, i32* %93, align 4
  %95 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %96 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %95, i32 0, i32 7
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %101, -1
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %4, align 8
  store i32 %102, i32* %103, align 4
  %105 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %106 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %105, i32 0, i32 7
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, -1
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %4, align 8
  store i32 %112, i32* %113, align 4
  %115 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  store i32* %115, i32** %4, align 8
  br label %116

116:                                              ; preds = %134, %18
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %119 = getelementptr inbounds i32, i32* %118, i64 9
  %120 = icmp ult i32* %117, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %116
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp sgt i32 %130, %131
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %121
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %4, align 8
  br label %116

137:                                              ; preds = %116
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = and i32 %141, 65535
  %143 = load i32, i32* %6, align 4
  %144 = ashr i32 %143, 16
  %145 = add nsw i32 %142, %144
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, 65535
  %148 = load i32, i32* %6, align 4
  %149 = ashr i32 %148, 16
  %150 = add nsw i32 %147, %149
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %155 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %154, i32 0, i32 6
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %137, %1
  %157 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %158 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SFE_IPV6_CONNECTION_MATCH_FLAG_XLATE_DEST, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %301

163:                                              ; preds = %156
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %164 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  store i32* %164, i32** %4, align 8
  %165 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %166 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %165, i32 0, i32 5
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %4, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %4, align 8
  store i32 %171, i32* %172, align 4
  %174 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %175 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %174, i32 0, i32 5
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %4, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %4, align 8
  store i32 %180, i32* %181, align 4
  %183 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %184 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %183, i32 0, i32 5
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %4, align 8
  store i32 %189, i32* %190, align 4
  %192 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %193 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %192, i32 0, i32 5
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %4, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %4, align 8
  store i32 %198, i32* %199, align 4
  %201 = load i32*, i32** %4, align 8
  %202 = bitcast i32* %201 to i8**
  store i8** %202, i8*** %5, align 8
  %203 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %204 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = load i8**, i8*** %5, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i32 1
  store i8** %209, i8*** %5, align 8
  store i8* %207, i8** %208, align 8
  %210 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %211 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = xor i32 %212, -1
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  %216 = load i8**, i8*** %5, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i32 1
  store i8** %217, i8*** %5, align 8
  store i8* %215, i8** %216, align 8
  %218 = load i8**, i8*** %5, align 8
  %219 = bitcast i8** %218 to i32*
  store i32* %219, i32** %4, align 8
  %220 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %221 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %220, i32 0, i32 2
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = xor i32 %226, -1
  %228 = load i32*, i32** %4, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %4, align 8
  store i32 %227, i32* %228, align 4
  %230 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %231 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %230, i32 0, i32 2
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = xor i32 %236, -1
  %238 = load i32*, i32** %4, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %4, align 8
  store i32 %237, i32* %238, align 4
  %240 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %241 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %240, i32 0, i32 2
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 2
  %246 = load i32, i32* %245, align 4
  %247 = xor i32 %246, -1
  %248 = load i32*, i32** %4, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %4, align 8
  store i32 %247, i32* %248, align 4
  %250 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %251 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %250, i32 0, i32 2
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  %256 = load i32, i32* %255, align 4
  %257 = xor i32 %256, -1
  %258 = load i32*, i32** %4, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %4, align 8
  store i32 %257, i32* %258, align 4
  %260 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  store i32* %260, i32** %4, align 8
  br label %261

261:                                              ; preds = %279, %163
  %262 = load i32*, i32** %4, align 8
  %263 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %264 = getelementptr inbounds i32, i32* %263, i64 9
  %265 = icmp ult i32* %262, %264
  br i1 %265, label %266, label %282

266:                                              ; preds = %261
  %267 = load i32*, i32** %4, align 8
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %11, align 4
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %9, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %9, align 4
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* %9, align 4
  %277 = icmp sgt i32 %275, %276
  %278 = zext i1 %277 to i32
  store i32 %278, i32* %10, align 4
  br label %279

279:                                              ; preds = %266
  %280 = load i32*, i32** %4, align 8
  %281 = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %281, i32** %4, align 8
  br label %261

282:                                              ; preds = %261
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, %283
  store i32 %285, i32* %9, align 4
  %286 = load i32, i32* %9, align 4
  %287 = and i32 %286, 65535
  %288 = load i32, i32* %9, align 4
  %289 = ashr i32 %288, 16
  %290 = add nsw i32 %287, %289
  store i32 %290, i32* %9, align 4
  %291 = load i32, i32* %9, align 4
  %292 = and i32 %291, 65535
  %293 = load i32, i32* %9, align 4
  %294 = ashr i32 %293, 16
  %295 = add nsw i32 %292, %294
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = inttoptr i64 %297 to i8*
  %299 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %2, align 8
  %300 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %299, i32 0, i32 1
  store i8* %298, i8** %300, align 8
  br label %301

301:                                              ; preds = %282, %156
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
