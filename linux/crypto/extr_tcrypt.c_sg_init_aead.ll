; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_sg_init_aead.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_sg_init_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@XBUFSIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*, i8**, i32, i8*, i32)* @sg_init_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg_init_aead(%struct.scatterlist* %0, i8** %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @XBUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = add i32 %16, %17
  %19 = sub i32 %18, 1
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @XBUFSIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @XBUFSIZE, align 4
  store i32 %27, i32* %11, align 4
  br label %32

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = urem i32 %29, %30
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @sg_init_table(%struct.scatterlist* %33, i32 %35)
  %37 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %38 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %37, i64 0
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @sg_set_buf(%struct.scatterlist* %38, i8* %39, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %44, %32
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i64 %56
  %58 = load i8**, i8*** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = call i32 @sg_set_buf(%struct.scatterlist* %57, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %72, i64 %75
  %77 = load i8**, i8*** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @sg_set_buf(%struct.scatterlist* %76, i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
