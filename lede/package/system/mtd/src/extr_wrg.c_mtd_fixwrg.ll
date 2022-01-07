; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_wrg.c_mtd_fixwrg.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_wrg.c_mtd_fixwrg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrg_header = type { i32, i32 }

@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Trying to fix WRG header in %s at 0x%x...\0A\00", align 1
@erasesize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@mtdsize = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Offset too large, device size 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pread\00", align 1
@WRG_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"No WRG header found (%08x != %08x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"WRG entity with empty image\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't erease block at 0x%x (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Rewriting block at 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Error writing block (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_fixwrg(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wrg_header*, align 8
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
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
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
  %75 = bitcast i8* %74 to %struct.wrg_header*
  store %struct.wrg_header* %75, %struct.wrg_header** %12, align 8
  %76 = load %struct.wrg_header*, %struct.wrg_header** %12, align 8
  %77 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le32_to_cpu(i32 %78)
  %80 = load i32, i32* @WRG_MAGIC, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %71
  %84 = load i32, i32* @stderr, align 4
  %85 = load %struct.wrg_header*, %struct.wrg_header** %12, align 8
  %86 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  %89 = load i32, i32* @WRG_MAGIC, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %88, i32 %89)
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %71
  %93 = load %struct.wrg_header*, %struct.wrg_header** %12, align 8
  %94 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @le32_to_cpu(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %101 = call i32 @exit(i32 1) #3
  unreachable

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %5, align 8
  %105 = add i64 %104, 8
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* @mtdsize, align 8
  %110 = load i64, i64* %11, align 8
  %111 = sub i64 %109, %110
  store i64 %111, i64* %6, align 8
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.wrg_header*, %struct.wrg_header** %12, align 8
  %115 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @le32_to_cpu(i32 %116)
  %118 = icmp ugt i64 %113, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.wrg_header*, %struct.wrg_header** %12, align 8
  %121 = getelementptr inbounds %struct.wrg_header, %struct.wrg_header* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @le32_to_cpu(i32 %122)
  store i64 %123, i64* %6, align 8
  br label %124

124:                                              ; preds = %119, %112
  %125 = load %struct.wrg_header*, %struct.wrg_header** %12, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %6, align 8
  %129 = call i64 @wrg_fix_md5(%struct.wrg_header* %125, i32 %126, i64 %127, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %172

132:                                              ; preds = %124
  %133 = load i32, i32* %7, align 4
  %134 = load i64, i64* %10, align 8
  %135 = call i64 @mtd_erase_block(i32 %133, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* @stderr, align 4
  %139 = load i64, i64* %10, align 8
  %140 = load i32, i32* @errno, align 4
  %141 = call i8* @strerror(i32 %140)
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %139, i8* %141)
  %143 = call i32 @exit(i32 1) #3
  unreachable

144:                                              ; preds = %132
  %145 = load i32, i32* @quiet, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* @stderr, align 4
  %149 = load i64, i64* %10, align 8
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %149)
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i32, i32* %7, align 4
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* @erasesize, align 4
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @pwrite(i32 %152, i8* %153, i32 %154, i64 %155)
  %157 = load i32, i32* @erasesize, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %151
  %160 = load i32, i32* @stderr, align 4
  %161 = load i32, i32* @errno, align 4
  %162 = call i8* @strerror(i32 %161)
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %162)
  %164 = call i32 @exit(i32 1) #3
  unreachable

165:                                              ; preds = %151
  %166 = load i32, i32* @quiet, align 4
  %167 = icmp slt i32 %166, 2
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* @stderr, align 4
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %131
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @close(i32 %173)
  %175 = call i32 (...) @sync()
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mtd_check_open(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @pread(i32, i8*, i32, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @wrg_fix_md5(%struct.wrg_header*, i32, i64, i64) #1

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
