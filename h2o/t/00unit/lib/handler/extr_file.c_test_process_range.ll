; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_file.c_test_process_range.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_file.c_test_process_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"bytes=, 0-10\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bytes=60-\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bytes=-10\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"bytes=0-10, -10\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"bytes=0-0, 20-89\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"bytes=-10,-20\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bytes=100-102\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bytes=70-21\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"bytes=90-102\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"bytes=-200\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"bytes=100-102,  90-102, 72-30,-22, 95-\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"bytes 20-1002\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"bytes=\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"bsdfeadsfjwleakjf\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"bytes=100-102, 90-102, -72-30,-22,95-\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"bytes=10-12-13, 90-102, -72, -22, 95-\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"bytes=100-102, 90-102, 70-39, -22$\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"bytes=-0\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"bytes=20-200\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"bytes=,\09,1-3 ,, ,5-9,\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"bytes= 1-3\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"bytes=1-3 5-10\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"bytes=1-\09,5-10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_process_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_process_range() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @h2o_mem_init_pool(i32* %1)
  %6 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @h2o_iovec_init(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %8, i64** %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp eq i64 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11)
  %13 = load i64*, i64** %3, align 8
  %14 = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %14, i64** %3, align 8
  %15 = load i64, i64* %13, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17)
  %19 = load i64*, i64** %3, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 11
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22)
  %24 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @h2o_iovec_init(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %26, i64** %3, align 8
  %27 = load i64, i64* %2, align 8
  %28 = icmp eq i64 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29)
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %3, align 8
  %33 = load i64, i64* %31, align 8
  %34 = icmp eq i64 %33, 60
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35)
  %37 = load i64*, i64** %3, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 40
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40)
  %42 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @h2o_iovec_init(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %44, i64** %3, align 8
  %45 = load i64, i64* %2, align 8
  %46 = icmp eq i64 %45, 1
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47)
  %49 = load i64*, i64** %3, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %3, align 8
  %51 = load i64, i64* %49, align 8
  %52 = icmp eq i64 %51, 90
  %53 = zext i1 %52 to i32
  %54 = call i32 @ok(i32 %53)
  %55 = load i64*, i64** %3, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 10
  %58 = zext i1 %57 to i32
  %59 = call i32 @ok(i32 %58)
  %60 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @h2o_iovec_init(i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %62, i64** %3, align 8
  %63 = load i64, i64* %2, align 8
  %64 = icmp eq i64 %63, 2
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65)
  %67 = load i64*, i64** %3, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %3, align 8
  %69 = load i64, i64* %67, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71)
  %73 = load i64*, i64** %3, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %3, align 8
  %75 = load i64, i64* %73, align 8
  %76 = icmp eq i64 %75, 11
  %77 = zext i1 %76 to i32
  %78 = call i32 @ok(i32 %77)
  %79 = load i64*, i64** %3, align 8
  %80 = getelementptr inbounds i64, i64* %79, i32 1
  store i64* %80, i64** %3, align 8
  %81 = load i64, i64* %79, align 8
  %82 = icmp eq i64 %81, 90
  %83 = zext i1 %82 to i32
  %84 = call i32 @ok(i32 %83)
  %85 = load i64*, i64** %3, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 10
  %88 = zext i1 %87 to i32
  %89 = call i32 @ok(i32 %88)
  %90 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 @h2o_iovec_init(i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %92, i64** %3, align 8
  %93 = load i64, i64* %2, align 8
  %94 = icmp eq i64 %93, 2
  %95 = zext i1 %94 to i32
  %96 = call i32 @ok(i32 %95)
  %97 = load i64*, i64** %3, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %3, align 8
  %99 = load i64, i64* %97, align 8
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @ok(i32 %101)
  %103 = load i64*, i64** %3, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %3, align 8
  %105 = load i64, i64* %103, align 8
  %106 = icmp eq i64 %105, 1
  %107 = zext i1 %106 to i32
  %108 = call i32 @ok(i32 %107)
  %109 = load i64*, i64** %3, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %3, align 8
  %111 = load i64, i64* %109, align 8
  %112 = icmp eq i64 %111, 20
  %113 = zext i1 %112 to i32
  %114 = call i32 @ok(i32 %113)
  %115 = load i64*, i64** %3, align 8
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 70
  %118 = zext i1 %117 to i32
  %119 = call i32 @ok(i32 %118)
  %120 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %121 = call i32 @h2o_iovec_init(i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %122, i64** %3, align 8
  %123 = load i64, i64* %2, align 8
  %124 = icmp eq i64 %123, 2
  %125 = zext i1 %124 to i32
  %126 = call i32 @ok(i32 %125)
  %127 = load i64*, i64** %3, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %3, align 8
  %129 = load i64, i64* %127, align 8
  %130 = icmp eq i64 %129, 90
  %131 = zext i1 %130 to i32
  %132 = call i32 @ok(i32 %131)
  %133 = load i64*, i64** %3, align 8
  %134 = getelementptr inbounds i64, i64* %133, i32 1
  store i64* %134, i64** %3, align 8
  %135 = load i64, i64* %133, align 8
  %136 = icmp eq i64 %135, 10
  %137 = zext i1 %136 to i32
  %138 = call i32 @ok(i32 %137)
  %139 = load i64*, i64** %3, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %3, align 8
  %141 = load i64, i64* %139, align 8
  %142 = icmp eq i64 %141, 80
  %143 = zext i1 %142 to i32
  %144 = call i32 @ok(i32 %143)
  %145 = load i64*, i64** %3, align 8
  %146 = getelementptr inbounds i64, i64* %145, i32 1
  store i64* %146, i64** %3, align 8
  %147 = load i64, i64* %145, align 8
  %148 = icmp eq i64 %147, 20
  %149 = zext i1 %148 to i32
  %150 = call i32 @ok(i32 %149)
  %151 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %152 = call i32 @h2o_iovec_init(i32 %151)
  store i32 %152, i32* %4, align 4
  %153 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %153, i64** %3, align 8
  %154 = load i64*, i64** %3, align 8
  %155 = icmp eq i64* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 @ok(i32 %156)
  %158 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %159 = call i32 @h2o_iovec_init(i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %160, i64** %3, align 8
  %161 = load i64*, i64** %3, align 8
  %162 = icmp eq i64* %161, null
  %163 = zext i1 %162 to i32
  %164 = call i32 @ok(i32 %163)
  %165 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %166 = call i32 @h2o_iovec_init(i32 %165)
  store i32 %166, i32* %4, align 4
  %167 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %167, i64** %3, align 8
  %168 = load i64, i64* %2, align 8
  %169 = icmp eq i64 %168, 1
  %170 = zext i1 %169 to i32
  %171 = call i32 @ok(i32 %170)
  %172 = load i64*, i64** %3, align 8
  %173 = getelementptr inbounds i64, i64* %172, i32 1
  store i64* %173, i64** %3, align 8
  %174 = load i64, i64* %172, align 8
  %175 = icmp eq i64 %174, 90
  %176 = zext i1 %175 to i32
  %177 = call i32 @ok(i32 %176)
  %178 = load i64*, i64** %3, align 8
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 10
  %181 = zext i1 %180 to i32
  %182 = call i32 @ok(i32 %181)
  %183 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %184 = call i32 @h2o_iovec_init(i32 %183)
  store i32 %184, i32* %4, align 4
  %185 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %185, i64** %3, align 8
  %186 = load i64, i64* %2, align 8
  %187 = icmp eq i64 %186, 1
  %188 = zext i1 %187 to i32
  %189 = call i32 @ok(i32 %188)
  %190 = load i64*, i64** %3, align 8
  %191 = getelementptr inbounds i64, i64* %190, i32 1
  store i64* %191, i64** %3, align 8
  %192 = load i64, i64* %190, align 8
  %193 = icmp eq i64 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i32 @ok(i32 %194)
  %196 = load i64*, i64** %3, align 8
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %197, 100
  %199 = zext i1 %198 to i32
  %200 = call i32 @ok(i32 %199)
  %201 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %202 = call i32 @h2o_iovec_init(i32 %201)
  store i32 %202, i32* %4, align 4
  %203 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %203, i64** %3, align 8
  %204 = load i64, i64* %2, align 8
  %205 = icmp eq i64 %204, 3
  %206 = zext i1 %205 to i32
  %207 = call i32 @ok(i32 %206)
  %208 = load i64*, i64** %3, align 8
  %209 = getelementptr inbounds i64, i64* %208, i32 1
  store i64* %209, i64** %3, align 8
  %210 = load i64, i64* %208, align 8
  %211 = icmp eq i64 %210, 90
  %212 = zext i1 %211 to i32
  %213 = call i32 @ok(i32 %212)
  %214 = load i64*, i64** %3, align 8
  %215 = getelementptr inbounds i64, i64* %214, i32 1
  store i64* %215, i64** %3, align 8
  %216 = load i64, i64* %214, align 8
  %217 = icmp eq i64 %216, 10
  %218 = zext i1 %217 to i32
  %219 = call i32 @ok(i32 %218)
  %220 = load i64*, i64** %3, align 8
  %221 = getelementptr inbounds i64, i64* %220, i32 1
  store i64* %221, i64** %3, align 8
  %222 = load i64, i64* %220, align 8
  %223 = icmp eq i64 %222, 78
  %224 = zext i1 %223 to i32
  %225 = call i32 @ok(i32 %224)
  %226 = load i64*, i64** %3, align 8
  %227 = getelementptr inbounds i64, i64* %226, i32 1
  store i64* %227, i64** %3, align 8
  %228 = load i64, i64* %226, align 8
  %229 = icmp eq i64 %228, 22
  %230 = zext i1 %229 to i32
  %231 = call i32 @ok(i32 %230)
  %232 = load i64*, i64** %3, align 8
  %233 = getelementptr inbounds i64, i64* %232, i32 1
  store i64* %233, i64** %3, align 8
  %234 = load i64, i64* %232, align 8
  %235 = icmp eq i64 %234, 95
  %236 = zext i1 %235 to i32
  %237 = call i32 @ok(i32 %236)
  %238 = load i64*, i64** %3, align 8
  %239 = getelementptr inbounds i64, i64* %238, i32 1
  store i64* %239, i64** %3, align 8
  %240 = load i64, i64* %238, align 8
  %241 = icmp eq i64 %240, 5
  %242 = zext i1 %241 to i32
  %243 = call i32 @ok(i32 %242)
  %244 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %245 = call i32 @h2o_iovec_init(i32 %244)
  store i32 %245, i32* %4, align 4
  %246 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %246, i64** %3, align 8
  %247 = load i64*, i64** %3, align 8
  %248 = icmp eq i64* %247, null
  %249 = zext i1 %248 to i32
  %250 = call i32 @ok(i32 %249)
  %251 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %252 = call i32 @h2o_iovec_init(i32 %251)
  store i32 %252, i32* %4, align 4
  %253 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %253, i64** %3, align 8
  %254 = load i64*, i64** %3, align 8
  %255 = icmp eq i64* %254, null
  %256 = zext i1 %255 to i32
  %257 = call i32 @ok(i32 %256)
  %258 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %259 = call i32 @h2o_iovec_init(i32 %258)
  store i32 %259, i32* %4, align 4
  %260 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %260, i64** %3, align 8
  %261 = load i64*, i64** %3, align 8
  %262 = icmp eq i64* %261, null
  %263 = zext i1 %262 to i32
  %264 = call i32 @ok(i32 %263)
  %265 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %266 = call i32 @h2o_iovec_init(i32 %265)
  store i32 %266, i32* %4, align 4
  %267 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %267, i64** %3, align 8
  %268 = load i64*, i64** %3, align 8
  %269 = icmp eq i64* %268, null
  %270 = zext i1 %269 to i32
  %271 = call i32 @ok(i32 %270)
  %272 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %273 = call i32 @h2o_iovec_init(i32 %272)
  store i32 %273, i32* %4, align 4
  %274 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %274, i64** %3, align 8
  %275 = load i64*, i64** %3, align 8
  %276 = icmp eq i64* %275, null
  %277 = zext i1 %276 to i32
  %278 = call i32 @ok(i32 %277)
  %279 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %280 = call i32 @h2o_iovec_init(i32 %279)
  store i32 %280, i32* %4, align 4
  %281 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %281, i64** %3, align 8
  %282 = load i64*, i64** %3, align 8
  %283 = icmp eq i64* %282, null
  %284 = zext i1 %283 to i32
  %285 = call i32 @ok(i32 %284)
  %286 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %287 = call i32 @h2o_iovec_init(i32 %286)
  store i32 %287, i32* %4, align 4
  %288 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %288, i64** %3, align 8
  %289 = load i64*, i64** %3, align 8
  %290 = icmp eq i64* %289, null
  %291 = zext i1 %290 to i32
  %292 = call i32 @ok(i32 %291)
  %293 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %294 = call i32 @h2o_iovec_init(i32 %293)
  store i32 %294, i32* %4, align 4
  %295 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %295, i64** %3, align 8
  %296 = load i64, i64* %2, align 8
  %297 = icmp eq i64 %296, 1
  %298 = zext i1 %297 to i32
  %299 = call i32 @ok(i32 %298)
  %300 = load i64*, i64** %3, align 8
  %301 = getelementptr inbounds i64, i64* %300, i32 1
  store i64* %301, i64** %3, align 8
  %302 = load i64, i64* %300, align 8
  %303 = icmp eq i64 %302, 20
  %304 = zext i1 %303 to i32
  %305 = call i32 @ok(i32 %304)
  %306 = load i64*, i64** %3, align 8
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %307, 80
  %309 = zext i1 %308 to i32
  %310 = call i32 @ok(i32 %309)
  %311 = call i64* @process_range(i32* %1, i32* %4, i32 1000, i64* %2)
  store i64* %311, i64** %3, align 8
  %312 = load i64, i64* %2, align 8
  %313 = icmp eq i64 %312, 1
  %314 = zext i1 %313 to i32
  %315 = call i32 @ok(i32 %314)
  %316 = load i64*, i64** %3, align 8
  %317 = getelementptr inbounds i64, i64* %316, i32 1
  store i64* %317, i64** %3, align 8
  %318 = load i64, i64* %316, align 8
  %319 = icmp eq i64 %318, 20
  %320 = zext i1 %319 to i32
  %321 = call i32 @ok(i32 %320)
  %322 = load i64*, i64** %3, align 8
  %323 = load i64, i64* %322, align 8
  %324 = icmp eq i64 %323, 181
  %325 = zext i1 %324 to i32
  %326 = call i32 @ok(i32 %325)
  %327 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %328 = call i32 @h2o_iovec_init(i32 %327)
  store i32 %328, i32* %4, align 4
  %329 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %329, i64** %3, align 8
  %330 = load i64, i64* %2, align 8
  %331 = icmp eq i64 %330, 2
  %332 = zext i1 %331 to i32
  %333 = call i32 @ok(i32 %332)
  %334 = load i64*, i64** %3, align 8
  %335 = getelementptr inbounds i64, i64* %334, i32 1
  store i64* %335, i64** %3, align 8
  %336 = load i64, i64* %334, align 8
  %337 = icmp eq i64 %336, 1
  %338 = zext i1 %337 to i32
  %339 = call i32 @ok(i32 %338)
  %340 = load i64*, i64** %3, align 8
  %341 = getelementptr inbounds i64, i64* %340, i32 1
  store i64* %341, i64** %3, align 8
  %342 = load i64, i64* %340, align 8
  %343 = icmp eq i64 %342, 3
  %344 = zext i1 %343 to i32
  %345 = call i32 @ok(i32 %344)
  %346 = load i64*, i64** %3, align 8
  %347 = getelementptr inbounds i64, i64* %346, i32 1
  store i64* %347, i64** %3, align 8
  %348 = load i64, i64* %346, align 8
  %349 = icmp eq i64 %348, 5
  %350 = zext i1 %349 to i32
  %351 = call i32 @ok(i32 %350)
  %352 = load i64*, i64** %3, align 8
  %353 = load i64, i64* %352, align 8
  %354 = icmp eq i64 %353, 5
  %355 = zext i1 %354 to i32
  %356 = call i32 @ok(i32 %355)
  %357 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %358 = call i32 @h2o_iovec_init(i32 %357)
  store i32 %358, i32* %4, align 4
  %359 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %359, i64** %3, align 8
  %360 = load i64*, i64** %3, align 8
  %361 = icmp eq i64* %360, null
  %362 = zext i1 %361 to i32
  %363 = call i32 @ok(i32 %362)
  %364 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %365 = call i32 @h2o_iovec_init(i32 %364)
  store i32 %365, i32* %4, align 4
  %366 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %366, i64** %3, align 8
  %367 = load i64*, i64** %3, align 8
  %368 = icmp eq i64* %367, null
  %369 = zext i1 %368 to i32
  %370 = call i32 @ok(i32 %369)
  %371 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %372 = call i32 @h2o_iovec_init(i32 %371)
  store i32 %372, i32* %4, align 4
  %373 = call i64* @process_range(i32* %1, i32* %4, i32 100, i64* %2)
  store i64* %373, i64** %3, align 8
  %374 = load i64, i64* %2, align 8
  %375 = icmp eq i64 %374, 2
  %376 = zext i1 %375 to i32
  %377 = call i32 @ok(i32 %376)
  %378 = load i64*, i64** %3, align 8
  %379 = getelementptr inbounds i64, i64* %378, i32 1
  store i64* %379, i64** %3, align 8
  %380 = load i64, i64* %378, align 8
  %381 = icmp eq i64 %380, 1
  %382 = zext i1 %381 to i32
  %383 = call i32 @ok(i32 %382)
  %384 = load i64*, i64** %3, align 8
  %385 = getelementptr inbounds i64, i64* %384, i32 1
  store i64* %385, i64** %3, align 8
  %386 = load i64, i64* %384, align 8
  %387 = icmp eq i64 %386, 99
  %388 = zext i1 %387 to i32
  %389 = call i32 @ok(i32 %388)
  %390 = load i64*, i64** %3, align 8
  %391 = getelementptr inbounds i64, i64* %390, i32 1
  store i64* %391, i64** %3, align 8
  %392 = load i64, i64* %390, align 8
  %393 = icmp eq i64 %392, 5
  %394 = zext i1 %393 to i32
  %395 = call i32 @ok(i32 %394)
  %396 = load i64*, i64** %3, align 8
  %397 = load i64, i64* %396, align 8
  %398 = icmp eq i64 %397, 6
  %399 = zext i1 %398 to i32
  %400 = call i32 @ok(i32 %399)
  %401 = call i32 @h2o_mem_clear_pool(i32* %1)
  ret void
}

declare dso_local i32 @h2o_mem_init_pool(i32*) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i64* @process_range(i32*, i32*, i32, i64*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
