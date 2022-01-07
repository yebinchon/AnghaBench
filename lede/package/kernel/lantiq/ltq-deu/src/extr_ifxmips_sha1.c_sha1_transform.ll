; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1.c_sha1_transform.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1.c_sha1_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha1_ctx = type { i32, i64 }
%struct.deu_hash_t = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HASH_START = common dso_local global i64 0, align 8
@CRTCL_SECT_START = common dso_local global i32 0, align 4
@CRTCL_SECT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha1_ctx*, i8**, i8**)* @sha1_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha1_transform(%struct.sha1_ctx* %0, i8** %1, i8** %2) #0 {
  %4 = alloca %struct.sha1_ctx*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.deu_hash_t*, align 8
  %9 = alloca i64, align 8
  store %struct.sha1_ctx* %0, %struct.sha1_ctx** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* @HASH_START, align 8
  %11 = inttoptr i64 %10 to %struct.deu_hash_t*
  store %struct.deu_hash_t* %11, %struct.deu_hash_t** %8, align 8
  %12 = load i32, i32* @CRTCL_SECT_START, align 4
  %13 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %3
  %18 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8**
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %25 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %24, i32 0, i32 5
  store volatile i8* %23, i8** %25, align 8
  %26 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8**
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %33 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %32, i32 0, i32 4
  store volatile i8* %31, i8** %33, align 8
  %34 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8**
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %41 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %40, i32 0, i32 3
  store volatile i8* %39, i8** %41, align 8
  %42 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8**
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %49 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %48, i32 0, i32 2
  store volatile i8* %47, i8** %49, align 8
  %50 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8**
  %54 = getelementptr inbounds i8*, i8** %53, i64 4
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %57 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %56, i32 0, i32 1
  store volatile i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %17, %3
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 16
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i8**, i8*** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %69 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %68, i32 0, i32 0
  store volatile i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %59

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %80, %73
  %75 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %76 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load volatile i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %74

81:                                               ; preds = %74
  %82 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %83 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %82, i32 0, i32 5
  %84 = load volatile i8*, i8** %83, align 8
  %85 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8**
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  store i8* %84, i8** %89, align 8
  %90 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %91 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %90, i32 0, i32 4
  %92 = load volatile i8*, i8** %91, align 8
  %93 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8**
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  store i8* %92, i8** %97, align 8
  %98 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %99 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %98, i32 0, i32 3
  %100 = load volatile i8*, i8** %99, align 8
  %101 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8**
  %105 = getelementptr inbounds i8*, i8** %104, i64 2
  store i8* %100, i8** %105, align 8
  %106 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %107 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %106, i32 0, i32 2
  %108 = load volatile i8*, i8** %107, align 8
  %109 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %110 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8**
  %113 = getelementptr inbounds i8*, i8** %112, i64 3
  store i8* %108, i8** %113, align 8
  %114 = load %struct.deu_hash_t*, %struct.deu_hash_t** %8, align 8
  %115 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %114, i32 0, i32 1
  %116 = load volatile i8*, i8** %115, align 8
  %117 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %118 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i8**
  %121 = getelementptr inbounds i8*, i8** %120, i64 4
  store i8* %116, i8** %121, align 8
  %122 = load %struct.sha1_ctx*, %struct.sha1_ctx** %4, align 8
  %123 = getelementptr inbounds %struct.sha1_ctx, %struct.sha1_ctx* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load i32, i32* @CRTCL_SECT_END, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
