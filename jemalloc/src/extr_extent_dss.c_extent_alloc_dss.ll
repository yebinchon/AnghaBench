; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent_dss.c_extent_alloc_dss.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent_dss.c_extent_alloc_dss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_dss = common dso_local global i32 0, align 4
@PAGE = common dso_local global i64 0, align 8
@dss_exhausted = common dso_local global i32 0, align 4
@ATOMIC_ACQUIRE = common dso_local global i32 0, align 4
@SC_NSIZES = common dso_local global i32 0, align 4
@extent_state_active = common dso_local global i32 0, align 4
@EXTENT_NOT_HEAD = common dso_local global i32 0, align 4
@dss_max = common dso_local global i32 0, align 4
@ATOMIC_RELEASE = common dso_local global i32 0, align 4
@EXTENT_HOOKS_INITIALIZER = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @extent_alloc_dss(i32* %0, i32* %1, i8* %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load i32, i32* @have_dss, align 4
  %29 = call i32 @cassert(i32 %28)
  %30 = load i64, i64* %12, align 8
  %31 = icmp ugt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @PAGE, align 8
  %37 = call i64 @ALIGNMENT_CEILING(i64 %35, i64 %36)
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %12, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %207

44:                                               ; preds = %7
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32* @extent_alloc(i32* %45, i32* %46)
  store i32* %47, i32** %16, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8* null, i8** %8, align 8
  br label %207

51:                                               ; preds = %44
  %52 = call i32 (...) @extent_dss_extending_start()
  %53 = load i32, i32* @ATOMIC_ACQUIRE, align 4
  %54 = call i32 @atomic_load_b(i32* @dss_exhausted, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %200, label %56

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %199
  %58 = load i8*, i8** %11, align 8
  %59 = call i8* @extent_dss_max_update(i8* %58)
  store i8* %59, i8** %17, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %201

63:                                               ; preds = %57
  %64 = load i8*, i8** %17, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = call i64 @PAGE_CEILING(i64 %65)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %18, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load i64, i64* %13, align 8
  %71 = call i64 @ALIGNMENT_CEILING(i64 %69, i64 %70)
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %19, align 8
  %73 = load i8*, i8** %19, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load i8*, i8** %18, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = sub i64 %74, %76
  store i64 %77, i64* %20, align 8
  %78 = load i64, i64* %20, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %63
  %81 = load i32*, i32** %16, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @arena_ind_get(i32* %82)
  %84 = load i8*, i8** %18, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load i32, i32* @SC_NSIZES, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @arena_extent_sn_next(i32* %87)
  %89 = load i32, i32* @extent_state_active, align 4
  %90 = load i32, i32* @EXTENT_NOT_HEAD, align 4
  %91 = call i32 @extent_init(i32* %81, i32 %83, i8* %84, i64 %85, i64 0, i32 %86, i32 %88, i32 %89, i32 0, i32 1, i32 1, i32 %90)
  br label %92

92:                                               ; preds = %80, %63
  %93 = load i8*, i8** %19, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %94, %95
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %21, align 8
  %98 = load i8*, i8** %19, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load i8*, i8** %17, align 8
  %101 = ptrtoint i8* %100 to i64
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %92
  %104 = load i8*, i8** %21, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = load i8*, i8** %17, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103, %92
  br label %201

110:                                              ; preds = %103
  %111 = load i8*, i8** %17, align 8
  store i8* %111, i8** %22, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = load i8*, i8** %22, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = sub i64 %113, %115
  store i64 %116, i64* %23, align 8
  %117 = load i64, i64* %23, align 8
  %118 = load i64, i64* %12, align 8
  %119 = add i64 %117, %118
  store i64 %119, i64* %24, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load i64, i64* %24, align 8
  %123 = add i64 %121, %122
  %124 = load i8*, i8** %19, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load i64, i64* %12, align 8
  %127 = add i64 %125, %126
  %128 = icmp eq i64 %123, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i64, i64* %24, align 8
  %132 = call i8* @extent_dss_sbrk(i64 %131)
  store i8* %132, i8** %25, align 8
  %133 = load i8*, i8** %25, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = icmp eq i8* %133, %134
  br i1 %135, label %136, label %193

136:                                              ; preds = %110
  %137 = load i8*, i8** %21, align 8
  %138 = load i32, i32* @ATOMIC_RELEASE, align 4
  %139 = call i32 @atomic_store_p(i32* @dss_max, i8* %137, i32 %138)
  %140 = call i32 (...) @extent_dss_extending_finish()
  %141 = load i64, i64* %20, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = call i32 @extent_dalloc_gap(i32* %144, i32* %145, i32* %146)
  br label %153

148:                                              ; preds = %136
  %149 = load i32*, i32** %9, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load i32*, i32** %16, align 8
  %152 = call i32 @extent_dalloc(i32* %149, i32* %150, i32* %151)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = load i8*, i8** %19, align 8
  %159 = load i64, i64* %12, align 8
  %160 = call i32 @pages_decommit(i8* %158, i64 %159)
  %161 = load i32*, i32** %15, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %153
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %191

166:                                              ; preds = %162
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %166
  %171 = load i32*, i32** @EXTENT_HOOKS_INITIALIZER, align 8
  store i32* %171, i32** %26, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = call i32 @arena_ind_get(i32* %172)
  %174 = load i8*, i8** %19, align 8
  %175 = load i64, i64* %12, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load i32, i32* @SC_NSIZES, align 4
  %178 = load i32, i32* @extent_state_active, align 4
  %179 = load i32, i32* @EXTENT_NOT_HEAD, align 4
  %180 = call i32 @extent_init(i32* %27, i32 %173, i8* %174, i64 %175, i64 %176, i32 0, i32 %177, i32 %178, i32 0, i32 1, i32 1, i32 %179)
  %181 = load i32*, i32** %9, align 8
  %182 = load i32*, i32** %10, align 8
  %183 = load i64, i64* %12, align 8
  %184 = call i64 @extent_purge_forced_wrapper(i32* %181, i32* %182, i32** %26, i32* %27, i32 0, i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %170
  %187 = load i8*, i8** %19, align 8
  %188 = load i64, i64* %12, align 8
  %189 = call i32 @memset(i8* %187, i32 0, i64 %188)
  br label %190

190:                                              ; preds = %186, %170
  br label %191

191:                                              ; preds = %190, %166, %162
  %192 = load i8*, i8** %19, align 8
  store i8* %192, i8** %8, align 8
  br label %207

193:                                              ; preds = %110
  %194 = load i8*, i8** %25, align 8
  %195 = icmp eq i8* %194, inttoptr (i64 -1 to i8*)
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* @ATOMIC_RELEASE, align 4
  %198 = call i32 @atomic_store_b(i32* @dss_exhausted, i32 1, i32 %197)
  br label %201

199:                                              ; preds = %193
  br label %57

200:                                              ; preds = %51
  br label %201

201:                                              ; preds = %200, %196, %109, %62
  %202 = call i32 (...) @extent_dss_extending_finish()
  %203 = load i32*, i32** %9, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = load i32*, i32** %16, align 8
  %206 = call i32 @extent_dalloc(i32* %203, i32* %204, i32* %205)
  store i8* null, i8** %8, align 8
  br label %207

207:                                              ; preds = %201, %191, %50, %43
  %208 = load i8*, i8** %8, align 8
  ret i8* %208
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i64) #1

declare dso_local i32* @extent_alloc(i32*, i32*) #1

declare dso_local i32 @extent_dss_extending_start(...) #1

declare dso_local i32 @atomic_load_b(i32*, i32) #1

declare dso_local i8* @extent_dss_max_update(i8*) #1

declare dso_local i64 @PAGE_CEILING(i64) #1

declare dso_local i32 @extent_init(i32*, i32, i8*, i64, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i32 @arena_extent_sn_next(i32*) #1

declare dso_local i8* @extent_dss_sbrk(i64) #1

declare dso_local i32 @atomic_store_p(i32*, i8*, i32) #1

declare dso_local i32 @extent_dss_extending_finish(...) #1

declare dso_local i32 @extent_dalloc_gap(i32*, i32*, i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32*, i32*) #1

declare dso_local i32 @pages_decommit(i8*, i64) #1

declare dso_local i64 @extent_purge_forced_wrapper(i32*, i32*, i32**, i32*, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @atomic_store_b(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
