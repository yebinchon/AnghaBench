; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_zmalloc_list_decoder_ext.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_zmalloc_list_decoder_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32, i32, i32, i32, i32, i32*, i64, i64, i64, i32 }
%struct.interpolative_ext_decoder_stack_entry = type { i32, i32, i32, i64 }

@le_interpolative_ext = common dso_local global i32 0, align 4
@interpolative_ext_decode_int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list_decoder* @zmalloc_list_decoder_ext(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.list_decoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.list_decoder*, align 8
  %16 = alloca %struct.interpolative_ext_decoder_stack_entry*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @le_interpolative_ext, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call %struct.list_decoder* @zmalloc_list_decoder(i32 %21, i32 %22, i8* %23, i32 %24, i32 %25)
  store %struct.list_decoder* %26, %struct.list_decoder** %7, align 8
  br label %89

27:                                               ; preds = %6
  store i32 64, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i32 @bsr(i32 %29)
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 24, %32
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call %struct.list_decoder* @zmalloc(i32 %38)
  store %struct.list_decoder* %39, %struct.list_decoder** %15, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %42 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %45 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %47 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %46, i32 0, i32 9
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @bread_init(i32* %47, i8* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %53 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %56 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %58 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %61 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %63 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.interpolative_ext_decoder_stack_entry*
  store %struct.interpolative_ext_decoder_stack_entry* %65, %struct.interpolative_ext_decoder_stack_entry** %16, align 8
  %66 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %16, align 8
  %67 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %16, align 8
  %69 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  %70 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %71 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %16, align 8
  %75 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %77 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %16, align 8
  %80 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %82 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %16, align 8
  %83 = call i32 @interpolative_ext_decode_node(%struct.list_decoder* %81, %struct.interpolative_ext_decoder_stack_entry* %82)
  %84 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %85 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  %87 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %86, i32 0, i32 5
  store i32* @interpolative_ext_decode_int, i32** %87, align 8
  %88 = load %struct.list_decoder*, %struct.list_decoder** %15, align 8
  store %struct.list_decoder* %88, %struct.list_decoder** %7, align 8
  br label %89

89:                                               ; preds = %27, %20
  %90 = load %struct.list_decoder*, %struct.list_decoder** %7, align 8
  ret %struct.list_decoder* %90
}

declare dso_local %struct.list_decoder* @zmalloc_list_decoder(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @bsr(i32) #1

declare dso_local %struct.list_decoder* @zmalloc(i32) #1

declare dso_local i32 @bread_init(i32*, i8*, i32) #1

declare dso_local i32 @interpolative_ext_decode_node(%struct.list_decoder*, %struct.interpolative_ext_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
