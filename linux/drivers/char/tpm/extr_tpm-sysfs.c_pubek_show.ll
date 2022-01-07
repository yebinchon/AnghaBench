; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_pubek_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-sysfs.c_pubek_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tpm_buf = type { i32* }
%struct.tpm_readpubek_out = type { i32*, i32*, i32*, i32*, i32*, i32 }
%struct.tpm_chip = type { i32 }

@TPM_TAG_RQU_COMMAND = common dso_local global i32 0, align 4
@TPM_ORD_READPUBEK = common dso_local global i32 0, align 4
@READ_PUBEK_RESULT_MIN_BODY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"attempting to read the PUBEK\00", align 1
@.str.1 = private unnamed_addr constant [174 x i8] c"Algorithm: %02X %02X %02X %02X\0AEncscheme: %02X %02X\0ASigscheme: %02X %02X\0AParameters: %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\0AModulus length: %d\0AModulus:\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pubek_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pubek_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tpm_buf, align 8
  %9 = alloca %struct.tpm_readpubek_out*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tpm_chip*, align 8
  %13 = alloca [20 x i8], align 16
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %11, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.tpm_chip* @to_tpm_chip(%struct.device* %15)
  store %struct.tpm_chip* %16, %struct.tpm_chip** %12, align 8
  %17 = bitcast [20 x i8]* %13 to i8**
  %18 = call i32 @memset(i8** %17, i32 0, i32 20)
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %12, align 8
  %20 = call i64 @tpm_try_get_ops(%struct.tpm_chip* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %193

23:                                               ; preds = %3
  %24 = load i32, i32* @TPM_TAG_RQU_COMMAND, align 4
  %25 = load i32, i32* @TPM_ORD_READPUBEK, align 4
  %26 = call i64 @tpm_buf_init(%struct.tpm_buf* %8, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %184

29:                                               ; preds = %23
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %31 = call i32 @tpm_buf_append(%struct.tpm_buf* %8, i8* %30, i32 20)
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %12, align 8
  %33 = load i32, i32* @READ_PUBEK_RESULT_MIN_BODY_SIZE, align 4
  %34 = call i64 @tpm_transmit_cmd(%struct.tpm_chip* %32, %struct.tpm_buf* %8, i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %182

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %8, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 10
  %41 = bitcast i32* %40 to %struct.tpm_readpubek_out*
  store %struct.tpm_readpubek_out* %41, %struct.tpm_readpubek_out** %9, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %44 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %49 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %54 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %59 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %64 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %69 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %74 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %79 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %84 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %89 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %94 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %99 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %104 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %109 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %114 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %119 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 7
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %124 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 8
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %129 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 9
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %134 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 10
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %139 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 11
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %144 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @be32_to_cpu(i32 %145)
  %147 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %52, i32 %57, i32 %62, i32 %67, i32 %72, i32 %77, i32 %82, i32 %87, i32 %92, i32 %97, i32 %102, i32 %107, i32 %112, i32 %117, i32 %122, i32 %127, i32 %132, i32 %137, i32 %142, i32 %146)
  %148 = load i8*, i8** %11, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %178, %37
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 256
  br i1 %153, label %154, label %181

154:                                              ; preds = %151
  %155 = load i8*, i8** %11, align 8
  %156 = load %struct.tpm_readpubek_out*, %struct.tpm_readpubek_out** %9, align 8
  %157 = getelementptr inbounds %struct.tpm_readpubek_out, %struct.tpm_readpubek_out* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = load i8*, i8** %11, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %11, align 8
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  %169 = srem i32 %168, 16
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %154
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 (i8*, i8*, ...) @sprintf(i8* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %174 = load i8*, i8** %11, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** %11, align 8
  br label %177

177:                                              ; preds = %171, %154
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %151

181:                                              ; preds = %151
  br label %182

182:                                              ; preds = %181, %36
  %183 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %8)
  br label %184

184:                                              ; preds = %182, %28
  %185 = load %struct.tpm_chip*, %struct.tpm_chip** %12, align 8
  %186 = call i32 @tpm_put_ops(%struct.tpm_chip* %185)
  %187 = load i8*, i8** %11, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %184, %22
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.tpm_chip* @to_tpm_chip(%struct.device*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i64 @tpm_try_get_ops(%struct.tpm_chip*) #1

declare dso_local i64 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append(%struct.tpm_buf*, i8*, i32) #1

declare dso_local i64 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

declare dso_local i32 @tpm_put_ops(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
