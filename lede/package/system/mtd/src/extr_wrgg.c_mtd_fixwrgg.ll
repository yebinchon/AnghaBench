; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_wrgg.c_mtd_fixwrgg.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_wrgg.c_mtd_fixwrgg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrgg03_header = type { i32, i32 }

@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Trying to fix WRGG header in %s at 0x%x...\0A\00", align 1
@erasesize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@mtdsize = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Offset too large, device size 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pread\00", align 1
@WRGG03_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"magic1 %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"htonl(WRGG03_MAGIC) %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"No WRGG header found\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"WRGG entity with empty image\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Can't erease block at 0x%x (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Rewriting block at 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Error writing block (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_fixwrgg(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wrgg03_header*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @quiet, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @erasesize, align 4
  %23 = sub nsw i32 %22, 1
  %24 = xor i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = and i64 %21, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @mtd_check_open(i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %20
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* @erasesize, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %40, %42
  %44 = load i64, i64* @mtdsize, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @stderr, align 4
  %48 = load i64, i64* @mtdsize, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %39
  %52 = load i32, i32* @erasesize, align 4
  %53 = call i8* @malloc(i32 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @erasesize, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @pread(i32 %60, i8* %61, i32 %62, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @erasesize, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %59
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = bitcast i8* %74 to %struct.wrgg03_header*
  store %struct.wrgg03_header* %75, %struct.wrgg03_header** %12, align 8
  %76 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %77 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @WRGG03_MAGIC, align 4
  %80 = call i32 @STORE32_LE(i32 %79)
  %81 = call i32 @htonl(i32 %80)
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %71
  %84 = load i32, i32* @stderr, align 4
  %85 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %86 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* @WRGG03_MAGIC, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %71
  %96 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %97 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ntohl(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 8
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load i64, i64* @mtdsize, align 8
  %113 = load i64, i64* %11, align 8
  %114 = sub i64 %112, %113
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %118 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @ntohl(i32 %119)
  %121 = icmp ugt i64 %116, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %124 = getelementptr inbounds %struct.wrgg03_header, %struct.wrgg03_header* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @ntohl(i32 %125)
  store i64 %126, i64* %6, align 8
  br label %127

127:                                              ; preds = %122, %115
  %128 = load %struct.wrgg03_header*, %struct.wrgg03_header** %12, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i64 @wrgg_fix_md5(%struct.wrgg03_header* %128, i32 %129, i64 %130, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %175

135:                                              ; preds = %127
  %136 = load i32, i32* %7, align 4
  %137 = load i64, i64* %10, align 8
  %138 = call i64 @mtd_erase_block(i32 %136, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* @stderr, align 4
  %142 = load i64, i64* %10, align 8
  %143 = load i32, i32* @errno, align 4
  %144 = call i8* @strerror(i32 %143)
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %142, i8* %144)
  %146 = call i32 @exit(i32 1) #3
  unreachable

147:                                              ; preds = %135
  %148 = load i32, i32* @quiet, align 4
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, i32* @stderr, align 4
  %152 = load i64, i64* %10, align 8
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i64 %152)
  br label %154

154:                                              ; preds = %150, %147
  %155 = load i32, i32* %7, align 4
  %156 = load i8*, i8** %8, align 8
  %157 = load i32, i32* @erasesize, align 4
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @pwrite(i32 %155, i8* %156, i32 %157, i64 %158)
  %160 = load i32, i32* @erasesize, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %154
  %163 = load i32, i32* @stderr, align 4
  %164 = load i32, i32* @errno, align 4
  %165 = call i8* @strerror(i32 %164)
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* %165)
  %167 = call i32 @exit(i32 1) #3
  unreachable

168:                                              ; preds = %154
  %169 = load i32, i32* @quiet, align 4
  %170 = icmp slt i32 %169, 2
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %134
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @close(i32 %176)
  %178 = call i32 (...) @sync()
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mtd_check_open(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @pread(i32, i8*, i32, i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @STORE32_LE(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @wrgg_fix_md5(%struct.wrgg03_header*, i32, i64, i64) #1

declare dso_local i64 @mtd_erase_block(i32, i64) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @pwrite(i32, i8*, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
