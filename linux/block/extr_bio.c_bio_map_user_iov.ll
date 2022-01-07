; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_map_user_iov.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_map_user_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.request_queue = type { i32 }
%struct.iov_iter = type { i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@BIO_USER_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_map_user_iov(%struct.request_queue* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %20 = call i64 @iov_iter_count(%struct.iov_iter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.bio* @ERR_PTR(i32 %24)
  store %struct.bio* %25, %struct.bio** %4, align 8
  br label %163

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %29 = load i32, i32* @BIO_MAX_PAGES, align 4
  %30 = call i32 @iov_iter_npages(%struct.iov_iter* %28, i32 %29)
  %31 = call %struct.bio* @bio_kmalloc(i32 %27, i32 %30)
  store %struct.bio* %31, %struct.bio** %9, align 8
  %32 = load %struct.bio*, %struct.bio** %9, align 8
  %33 = icmp ne %struct.bio* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.bio* @ERR_PTR(i32 %36)
  store %struct.bio* %37, %struct.bio** %4, align 8
  br label %163

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %148, %38
  %40 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %41 = call i64 @iov_iter_count(%struct.iov_iter* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %149

43:                                               ; preds = %39
  store i64 0, i64* %14, align 8
  %44 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %45 = load i32, i32* @LONG_MAX, align 4
  %46 = call i32 @iov_iter_get_pages_alloc(%struct.iov_iter* %44, %struct.page*** %11, i32 %45, i64* %13)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sle i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = call i64 @unlikely(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  br label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EFAULT, align 4
  %60 = sub nsw i32 0, %59
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i32 [ %57, %56 ], [ %60, %58 ]
  store i32 %62, i32* %10, align 4
  br label %156

63:                                               ; preds = %43
  %64 = load i64, i64* %13, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %64, %66
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = call i32 @DIV_ROUND_UP(i64 %67, i64 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %72 = call i64 @queue_dma_alignment(%struct.request_queue* %71)
  %73 = and i64 %70, %72
  %74 = call i64 @unlikely(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %129

79:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %122, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %125

84:                                               ; preds = %80
  %85 = load %struct.page**, %struct.page*** %11, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.page*, %struct.page** %85, i64 %87
  %89 = load %struct.page*, %struct.page** %88, align 8
  store %struct.page* %89, %struct.page** %16, align 8
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = load i64, i64* %13, align 8
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %97, %84
  %100 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %101 = load %struct.bio*, %struct.bio** %9, align 8
  %102 = load %struct.page*, %struct.page** %16, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @__bio_add_pc_page(%struct.request_queue* %100, %struct.bio* %101, %struct.page* %102, i32 %103, i64 %104, i32* %18)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.page*, %struct.page** %16, align 8
  %112 = call i32 @put_page(%struct.page* %111)
  br label %113

113:                                              ; preds = %110, %107
  br label %125

114:                                              ; preds = %99
  %115 = load i32, i32* %17, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* %14, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %14, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %12, align 4
  %121 = sub i32 %120, %119
  store i32 %121, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %80

125:                                              ; preds = %113, %80
  %126 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %127 = load i64, i64* %14, align 8
  %128 = call i32 @iov_iter_advance(%struct.iov_iter* %126, i64 %127)
  br label %129

129:                                              ; preds = %125, %76
  br label %130

130:                                              ; preds = %134, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load %struct.page**, %struct.page*** %11, align 8
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds %struct.page*, %struct.page** %135, i64 %138
  %140 = load %struct.page*, %struct.page** %139, align 8
  %141 = call i32 @put_page(%struct.page* %140)
  br label %130

142:                                              ; preds = %130
  %143 = load %struct.page**, %struct.page*** %11, align 8
  %144 = call i32 @kvfree(%struct.page** %143)
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %149

148:                                              ; preds = %142
  br label %39

149:                                              ; preds = %147, %39
  %150 = load %struct.bio*, %struct.bio** %9, align 8
  %151 = load i32, i32* @BIO_USER_MAPPED, align 4
  %152 = call i32 @bio_set_flag(%struct.bio* %150, i32 %151)
  %153 = load %struct.bio*, %struct.bio** %9, align 8
  %154 = call i32 @bio_get(%struct.bio* %153)
  %155 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %155, %struct.bio** %4, align 8
  br label %163

156:                                              ; preds = %61
  %157 = load %struct.bio*, %struct.bio** %9, align 8
  %158 = call i32 @bio_release_pages(%struct.bio* %157, i32 0)
  %159 = load %struct.bio*, %struct.bio** %9, align 8
  %160 = call i32 @bio_put(%struct.bio* %159)
  %161 = load i32, i32* %10, align 4
  %162 = call %struct.bio* @ERR_PTR(i32 %161)
  store %struct.bio* %162, %struct.bio** %4, align 8
  br label %163

163:                                              ; preds = %156, %149, %34, %22
  %164 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %164
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local %struct.bio* @ERR_PTR(i32) #1

declare dso_local %struct.bio* @bio_kmalloc(i32, i32) #1

declare dso_local i32 @iov_iter_npages(%struct.iov_iter*, i32) #1

declare dso_local i32 @iov_iter_get_pages_alloc(%struct.iov_iter*, %struct.page***, i32, i64*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @queue_dma_alignment(%struct.request_queue*) #1

declare dso_local i32 @__bio_add_pc_page(%struct.request_queue*, %struct.bio*, %struct.page*, i32, i64, i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #1

declare dso_local i32 @kvfree(%struct.page**) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

declare dso_local i32 @bio_release_pages(%struct.bio*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
