; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_sha1-spe-glue.c_ppc_spe_sha1_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_sha1-spe-glue.c_ppc_spe_sha1_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_state = type { i32, i64, i32 }

@MAX_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @ppc_spe_sha1_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_spe_sha1_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sha1_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %14 = call %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc* %13)
  store %struct.sha1_state* %14, %struct.sha1_state** %8, align 8
  %15 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %16 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 63
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub i32 64, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %28 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %32 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i8* %37, i32* %38, i32 %39)
  store i32 0, i32* %4, align 4
  br label %117

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %44 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %41
  %50 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %51 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @memcpy(i8* %56, i32* %57, i32 %58)
  %60 = call i32 (...) @spe_begin()
  %61 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %62 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %65 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @ppc_spe_sha1_transform(i32 %63, i32* %67, i32 1)
  %69 = call i32 (...) @spe_end()
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %12, align 8
  br label %77

77:                                               ; preds = %49, %41
  br label %78

78:                                               ; preds = %89, %77
  %79 = load i32, i32* %7, align 4
  %80 = icmp ugt i32 %79, 63
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @MAX_BYTES, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @MAX_BYTES, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, -64
  store i32 %92, i32* %11, align 4
  %93 = call i32 (...) @spe_begin()
  %94 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %95 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %11, align 4
  %99 = lshr i32 %98, 6
  %100 = call i32 @ppc_spe_sha1_transform(i32 %96, i32* %97, i32 %99)
  %101 = call i32 (...) @spe_end()
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %12, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sub i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %78

109:                                              ; preds = %78
  %110 = load %struct.sha1_state*, %struct.sha1_state** %8, align 8
  %111 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @memcpy(i8* %113, i32* %114, i32 %115)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %109, %25
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.sha1_state* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @spe_begin(...) #1

declare dso_local i32 @ppc_spe_sha1_transform(i32, i32*, i32) #1

declare dso_local i32 @spe_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
