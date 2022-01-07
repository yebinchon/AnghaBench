; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_buffer_gets.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_buffer_gets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imap_buffer = type { i32, i8*, i32, i32 }

@verbosity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imap_buffer*, i8**)* @buffer_gets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_gets(%struct.imap_buffer* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imap_buffer*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imap_buffer* %0, %struct.imap_buffer** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8**, i8*** %5, align 8
  store i8* %16, i8** %17, align 8
  br label %18

18:                                               ; preds = %153, %2
  %19 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %97

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %27
  %31 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %5, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %30
  %50 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @memmove(i8* %52, i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %49, %30
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %64 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %69 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %61, %27
  %71 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %71, i32 0, i32 3
  %73 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %77 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %82 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = sub i64 8, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @socket_read(i32* %72, i8* %80, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %158

91:                                               ; preds = %70
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %94 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %18
  %98 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %99 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %102 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 13
  br i1 %108, label %109, label %153

109:                                              ; preds = %97
  %110 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %111 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  %114 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %115 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %121 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %124 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %122, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 10
  br i1 %131, label %132, label %152

132:                                              ; preds = %109
  %133 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %134 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %137 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  store i8 0, i8* %140, align 1
  %141 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %142 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %142, align 8
  %145 = load i64, i64* @verbosity, align 8
  %146 = icmp slt i64 0, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %132
  %148 = load i8**, i8*** %5, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @puts(i8* %149)
  br label %151

151:                                              ; preds = %147, %132
  store i32 0, i32* %3, align 4
  br label %158

152:                                              ; preds = %109
  br label %153

153:                                              ; preds = %152, %97
  %154 = load %struct.imap_buffer*, %struct.imap_buffer** %4, align 8
  %155 = getelementptr inbounds %struct.imap_buffer, %struct.imap_buffer* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  br label %18

158:                                              ; preds = %151, %90
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @socket_read(i32*, i8*, i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
