; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_note_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_note_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.seq_file = type { i32 }
%struct.pg_state = type { i8*, i64, i32, i64, i64, i64, %struct.TYPE_2__*, i32, i64 }

@note_page.units = internal constant [8 x i8] c"BKMGTPE\00", align 1
@address_markers = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"---[ %s ]---\0A\00", align 1
@_PAGE_RW = common dso_local global i64 0, align 8
@_PAGE_NX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"0x%0*lx-0x%0*lx   \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%9lu%c \00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"... %lu entr%s skipped ... \0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ies\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pg_state*, i8*, i64, i32)* @note_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_page(%struct.seq_file* %0, %struct.pg_state* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.pg_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store %struct.pg_state* %1, %struct.pg_state** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @pgprot_val(i8* %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %21 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @pgprot_val(i8* %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %25 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %28 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %5
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %34 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %37 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %40 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @address_markers, align 8
  %42 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %43 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %42, i32 0, i32 6
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %45 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %47 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %48 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %51 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.seq_file*, i32, i8*, i32, ...) @pt_dump_seq_printf(%struct.seq_file* %46, i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %260

56:                                               ; preds = %5
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %81, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %81, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %67 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %81, label %70

70:                                               ; preds = %64
  %71 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %72 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %75 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %74, i32 0, i32 6
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %73, %79
  br i1 %80, label %81, label %259

81:                                               ; preds = %70, %64, %60, %56
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @note_page.units, i64 0, i64 0), i8** %14, align 8
  store i32 16, i32* %16, align 4
  %82 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %83 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* @_PAGE_RW, align 8
  %89 = and i64 %87, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @_PAGE_NX, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %98 = call i32 @note_wx(%struct.pg_state* %97)
  br label %99

99:                                               ; preds = %96, %91, %86, %81
  %100 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %101 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %100, i32 0, i32 6
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %108 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %111 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %110, i32 0, i32 6
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %109, %114
  br i1 %115, label %116, label %174

116:                                              ; preds = %106, %99
  %117 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %118 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %119 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %123 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %127 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (%struct.seq_file*, i32, i8*, i32, ...) @pt_dump_seq_printf(%struct.seq_file* %117, i32 %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %121, i64 %124, i32 %125, i64 %128)
  %130 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %131 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %134 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %132, %135
  store i64 %136, i64* %15, align 8
  br label %137

137:                                              ; preds = %149, %116
  %138 = load i64, i64* %15, align 8
  %139 = and i64 %138, 1023
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = load i8*, i8** %14, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi i1 [ false, %137 ], [ %146, %141 ]
  br i1 %148, label %149, label %154

149:                                              ; preds = %147
  %150 = load i64, i64* %15, align 8
  %151 = lshr i64 %150, 10
  store i64 %151, i64* %15, align 8
  %152 = load i8*, i8** %14, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %14, align 8
  br label %137

154:                                              ; preds = %147
  %155 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %156 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %157 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* %15, align 8
  %160 = load i8*, i8** %14, align 8
  %161 = load i8, i8* %160, align 1
  %162 = call i32 @pt_dump_cont_printf(%struct.seq_file* %155, i32 %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %159, i8 signext %161)
  %163 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %164 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %165 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %168 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %171 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @printk_prot(%struct.seq_file* %163, i8* %166, i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %154, %106
  %175 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %176 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %176, align 8
  %179 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %180 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %183 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %182, i32 0, i32 6
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 1
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sge i64 %181, %187
  br i1 %188, label %189, label %244

189:                                              ; preds = %174
  %190 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %191 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %190, i32 0, i32 6
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %227

196:                                              ; preds = %189
  %197 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %198 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %201 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %200, i32 0, i32 6
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp sgt i64 %199, %204
  br i1 %205, label %206, label %227

206:                                              ; preds = %196
  %207 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %208 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %211 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %210, i32 0, i32 6
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = sub nsw i64 %209, %214
  store i64 %215, i64* %17, align 8
  %216 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %217 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %218 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 8
  %220 = load i64, i64* %17, align 8
  %221 = trunc i64 %220 to i32
  %222 = load i64, i64* %17, align 8
  %223 = icmp eq i64 %222, 1
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %226 = call i32 (%struct.seq_file*, i32, i8*, i32, ...) @pt_dump_seq_printf(%struct.seq_file* %216, i32 %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %221, i8* %225)
  br label %227

227:                                              ; preds = %206, %196, %189
  %228 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %229 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %228, i32 0, i32 6
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 1
  store %struct.TYPE_2__* %231, %struct.TYPE_2__** %229, align 8
  %232 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %233 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %232, i32 0, i32 3
  store i64 0, i64* %233, align 8
  %234 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %235 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %236 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %239 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %238, i32 0, i32 6
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (%struct.seq_file*, i32, i8*, i32, ...) @pt_dump_seq_printf(%struct.seq_file* %234, i32 %237, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %227, %174
  %245 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %246 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %249 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %248, i32 0, i32 5
  store i64 %247, i64* %249, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %252 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  %253 = load i64, i64* %9, align 8
  %254 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %255 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %254, i32 0, i32 1
  store i64 %253, i64* %255, align 8
  %256 = load i32, i32* %10, align 4
  %257 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %258 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %244, %70
  br label %260

260:                                              ; preds = %259, %31
  ret void
}

declare dso_local i64 @pgprot_val(i8*) #1

declare dso_local i32 @pt_dump_seq_printf(%struct.seq_file*, i32, i8*, i32, ...) #1

declare dso_local i32 @note_wx(%struct.pg_state*) #1

declare dso_local i32 @pt_dump_cont_printf(%struct.seq_file*, i32, i8*, i64, i8 signext) #1

declare dso_local i32 @printk_prot(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
