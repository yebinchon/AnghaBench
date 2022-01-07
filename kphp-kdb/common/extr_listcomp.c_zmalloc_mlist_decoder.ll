; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_zmalloc_mlist_decoder.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_zmalloc_mlist_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlist_decoder = type { i32, i32, i32, i32, i64, i32, i32, %struct.mlist_decoder_stack_entry*, i64 }
%struct.mlist_decoder_stack_entry = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlist_decoder* @zmalloc_mlist_decoder(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlist_decoder*, align 8
  %14 = alloca %struct.mlist_decoder_stack_entry*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @bsr(i32 %19)
  br label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @bsr(i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 24, %29
  %31 = add i64 48, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call %struct.mlist_decoder* @zmalloc(i32 %33)
  store %struct.mlist_decoder* %34, %struct.mlist_decoder** %13, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %37 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %39 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %38, i32 0, i32 5
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @bread_init(i32* %39, i8* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %25
  %46 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %47 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %46, i32 0, i32 5
  %48 = call i32 @bread_gamma_code(i32* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %25
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %52 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %55 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %57 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %56, i32 0, i32 8
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %60 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %62 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %61, i32 0, i32 7
  %63 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %62, align 8
  store %struct.mlist_decoder_stack_entry* %63, %struct.mlist_decoder_stack_entry** %14, align 8
  %64 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %14, align 8
  %65 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %14, align 8
  %67 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  %68 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %69 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  %72 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %14, align 8
  %73 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %75 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %14, align 8
  %78 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %80 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %79, i32 0, i32 5
  %81 = call i32 @bread_nbits(i32* %80, i32 1)
  %82 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %83 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %85 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %14, align 8
  %86 = call i32 @mlist_decode_node(%struct.mlist_decoder* %84, %struct.mlist_decoder_stack_entry* %85)
  %87 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  %88 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.mlist_decoder*, %struct.mlist_decoder** %13, align 8
  ret %struct.mlist_decoder* %89
}

declare dso_local i32 @bsr(i32) #1

declare dso_local %struct.mlist_decoder* @zmalloc(i32) #1

declare dso_local i32 @bread_init(i32*, i8*, i32) #1

declare dso_local i32 @bread_gamma_code(i32*) #1

declare dso_local i32 @bread_nbits(i32*, i32) #1

declare dso_local i32 @mlist_decode_node(%struct.mlist_decoder*, %struct.mlist_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
